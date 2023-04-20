import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micqui_admin/core/constants/exceptions.dart';

import '../../../data/models/bucket/bucket.dart';
import '../../../data/models/questions/questions.dart';
import '../../../data/repositories/firestore_repository.dart';

part 'bucket_event.dart';

part 'bucket_state.dart';

part 'bucket_bloc.freezed.dart';

class BucketBloc extends Bloc<BucketEvent, BucketState> {
  final FirestoreRepository firestore;

  BucketBloc({required this.firestore}) : super(const BucketState.initial()) {
    on<BucketEvent>(_mapBlocToState);
  }

  Future<void> _mapBlocToState(
      BucketEvent event, Emitter<BucketState> emit) async {
    await event.maybeMap(
      init: (e) => _init(e, emit),
      addQuestion: (e) => _addQuestion(e, emit),
      setQuestion: (e) => _setQuestion(e, emit),
      removeFromRelease: (e) => _removeFromRelease(e, emit),
      publish: (e) => _publish(e, emit),
      orElse: () {},
    );
  }

  Future<void> _init(_Init event, Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    try {
      // List<Questions>? questionsFromFirestore =
      //     firestore.getQuestions(bucket: event.bucket);
      final bucket = await firestore.getBucket(bucketId: event.bucketId!);
      emit(BucketState.loaded(
        bucket: bucket,
      ));
    } on BadRequestException catch (e) {
      emit(BucketState.error(error: e.message));
    }
  }

  Future<void> _addQuestion(
      _AddQuestion event, Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    List<Questions> questions = await firestore.addQuestion();

    emit(BucketState.loaded(questions: questions, bucket: event.bucket));
  }

  Future<void> _setQuestion(
      _SetQuestion event, Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    try {
      await firestore.setQuestion(
          bucketId: event.bucketId, question: event.questions);
      emit(BucketState.loaded(
          questions: event.stateQuestions, bucket: event.bucket));
    } on BadRequestException catch (e) {
      emit(BucketState.error(error: e.message));
    }
  }

  Future<void> _removeFromRelease(
      _RemoveFromRelease event, Emitter<BucketState> emit) async {
    await firestore.publishBucket(bucketId: event.bucketId, isPublish: false);
    emit(const BucketState.isPublished());
  }

  Future<void> _publish(_Publish event, Emitter<BucketState> emit) async {
    await firestore.publishBucket(bucketId: event.bucketId, isPublish: false);
    emit(const BucketState.isPublished());
  }

// Future<void> _searchByName(
//     _SearchByName event, Emitter<BucketState> emit) async {
//   emit(const BucketState.searchLoading());
//
//
//   if (event.name.isEmpty) {
//     emit(BucketState.loaded(bucket: event.buckets));
//   } else {
//     List<Bucket> foundedBuckets = buckets!
//         .where(
//             (e) => e.name!.toLowerCase().contains(event.name.toLowerCase()))
//         .toList();
//     if (foundedBuckets.isEmpty) {
//       emit(const BucketState.searchError(error: 'No Match Items'));
//     } else {
//       emit(BucketState.loaded(bucket: foundedBuckets));
//     }
//   }
// }
}
