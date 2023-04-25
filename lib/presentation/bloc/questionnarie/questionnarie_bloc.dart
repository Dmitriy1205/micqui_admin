import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micqui_admin/core/constants/exceptions.dart';
import 'package:micqui_admin/data/repositories/firestore_repository.dart';

import '../../../data/models/bucket/bucket.dart';
import '../auth/auth_bloc.dart';

part 'questionnarie_event.dart';

part 'questionnarie_state.dart';

part 'questionnarie_bloc.freezed.dart';

class QuestionnarieBloc extends Bloc<QuestionnarieEvent, QuestionnarieState> {
  final FirestoreRepository firestore;
  final AuthBloc authBloc;
  late StreamSubscription _subscription;

  QuestionnarieBloc({
    required this.firestore,
    required this.authBloc,
  }) : super(const QuestionnarieState.initial()) {
    on<QuestionnarieEvent>(_mapBlocToState);

    _subscription = authBloc.stream.listen((state) {
      state.maybeMap(
          authenticated: (s) => add(const QuestionnarieEvent.init()),
          unauthenticated: (_) => add(const QuestionnarieEvent.reset()),
          orElse: () {});
    });
  }

  Future<void> _mapBlocToState(
      QuestionnarieEvent event, Emitter<QuestionnarieState> emit) async {
    await event.map(
      init: (e) => _init(e, emit),
      addBucket: (e) => _addBucket(e, emit),
      setBucket: (e) => _setBucket(e, emit),
      updateCategory: (e) => _updateCategory(e, emit),
      searchByName: (e) => _searchByName(e, emit),
      sortByCategory: (e) => _sortByCategory(e, emit),
      reset: (e) => _reset(e, emit),
      deleteBucket: (e) => _deleteBucket(e, emit),
    );
  }

  Future<void> _init(_Init event, Emitter<QuestionnarieState> emit) async {
    emit(const QuestionnarieState.loading());
    try {
      final buckets = await firestore.getBuckets();

      emit(QuestionnarieState.loaded(bucket: buckets));
    } on BadRequestException catch (e) {
      emit(QuestionnarieState.error(error: e.message));
    }
  }

  Future<void> _addBucket(
      _AddBucket event, Emitter<QuestionnarieState> emit) async {
    emit(const QuestionnarieState.loading());
    final buckets = firestore.addBucket();

    emit(QuestionnarieState.loaded(bucket: buckets));
  }

  Future<void> _setBucket(
      _SetBucket event, Emitter<QuestionnarieState> emit) async {
    await firestore.setBucket(bucket: event.bucket, bucketId: event.bucketId);
    emit(const QuestionnarieState.success());
  }

  Future<void> _updateCategory(
      _UpdateCategory event, Emitter<QuestionnarieState> emit) async {
    await firestore.updateBucketCategory(
        bucketId: event.bucketId, category: event.category);
    emit(const QuestionnarieState.success());
  }

  Future<void> _searchByName(
      _SearchByName event, Emitter<QuestionnarieState> emit) async {
    emit(const QuestionnarieState.searchLoading());
    final buckets = await firestore.sort(event.category);

    if (event.name.isEmpty) {
      emit(QuestionnarieState.loaded(bucket: buckets));
    } else {
      List<Bucket> foundedBuckets = buckets!
          .where(
              (e) => e.name!.toLowerCase().contains(event.name.toLowerCase()))
          .toList();
      if (foundedBuckets.isEmpty) {
        emit(const QuestionnarieState.searchError(error: 'No Match Items'));
      } else {
        emit(QuestionnarieState.loaded(bucket: foundedBuckets));
      }
    }
  }

  Future<void> _sortByCategory(
      _SortByCategory event, Emitter<QuestionnarieState> emit) async {
    final buckets = await firestore.sort(event.category);
    emit(QuestionnarieState.loaded(bucket: buckets));
  }

  Future<void> _reset(_Reset event, Emitter<QuestionnarieState> emit) async {
    emit(const QuestionnarieState.initial());
  }
  Future<void> _deleteBucket(_DeleteBucket event, Emitter<QuestionnarieState> emit) async {
    emit(const QuestionnarieState.loading());
    try {
      final buckets = await firestore.deleteBucket(bucketId: event.bucketId);
      emit(QuestionnarieState.loaded(bucket: buckets));
    } on Error {
      List<Bucket> buckets = List.from(event.bucket!);
      buckets.removeAt(event.index!);

      emit(QuestionnarieState.loaded(bucket: buckets));
    }
  }
  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
