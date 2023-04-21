import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micqui_admin/core/constants/exceptions.dart';

import '../../../data/models/answer/answer.dart';
import '../../../data/models/bucket/bucket.dart';
import '../../../data/models/questions/questions.dart';
import '../../../data/repositories/firestore_repository.dart';
import '../questionnarie/questionnarie_bloc.dart';

part 'bucket_event.dart';

part 'bucket_state.dart';

part 'bucket_bloc.freezed.dart';

class BucketBloc extends Bloc<BucketEvent, BucketState> {
  final FirestoreRepository firestore;
  final QuestionnarieBloc questionnarieBloc;

  BucketBloc({
    required this.firestore,
    required this.questionnarieBloc,
  }) : super(const BucketState.initial()) {
    on<BucketEvent>(_mapBlocToState);
  }

  Future<void> _mapBlocToState(
      BucketEvent event, Emitter<BucketState> emit) async {
    await event.maybeMap(
      init: (e) {},
      addQuestion: (e) => _addQuestion(e, emit),
      addAnswer: (e) => _addAnswer(e, emit),
      searchByName: (e) => _searchByName(e, emit),
      setQuestion: (e) => _setQuestion(e, emit),
      setAnswer: (e) => _setAnswer(e, emit),
      removeFromRelease: (e) => _removeFromRelease(e, emit),
      publish: (e) => _publish(e, emit),
      deleteAnswer: (e)=>_deleteAnswer(e, emit),
      deleteQuestion: (e)=>_deleteQuestion(e, emit),
      orElse: () {},
    );
  }

  // Future<void> _init(_Init event, Emitter<BucketState> emit) async {
  //   emit(const BucketState.loading());
  //   try {
  //     // List<Questions>? questionsFromFirestore =
  //     //     firestore.getQuestions(bucket: event.bucket);
  //     final bucket = await firestore.getBucket(bucketId: event.bucketId!);
  //     emit(BucketState.loaded(
  //       bucket: bucket,
  //     ));
  //   } on BadRequestException catch (e) {
  //     emit(BucketState.error(error: e.message));
  //   }
  // }

  Future<void> _addQuestion(
      _AddQuestion event, Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    const question = Questions(name: 'Name', variants: []);

    emit(const BucketState.questionAdded(questions: question));
  }

  Future<void> _setQuestion(
      _SetQuestion event, Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    try {
      await firestore.setQuestion(
        bucketId: event.bucketId,
        questionId: event.questionId,
        question: event.question,
        index: event.questionIndex,
      );
      emit(const BucketState.loaded());
    } on BadRequestException catch (e) {
      emit(BucketState.error(error: e.message));
    }
  }

  Future<void> _addAnswer(_AddAnswer event, Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    List<Answer> answers = List.from(event.answerList!);
    answers.add(const Answer(name: 'Answer Name', isRight: false));

    Questions question = Questions(
        id: event.question.id, name: event.question.name, variants: answers);

    emit(BucketState.answerAdded(
        question: question, questionIndex: event.questionIndex));
  }

  Future<void> _setAnswer(_SetAnswer event, Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    try {
      await firestore.setAnswer(
        bucketId: event.bucketId,
        existedQuestions: event.question,
        index: event.questionIndex,
        answer: event.answer,
      );
      emit(const BucketState.loaded());
    } on BadRequestException catch (e) {
      emit(BucketState.error(error: e.message));
    }
  }

  Future<void> _removeFromRelease(
      _RemoveFromRelease event, Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    await firestore.publishBucket(bucketId: event.bucketId, isPublish: false);
    emit(const BucketState.isPublished(isPublished: false));
  }

  Future<void> _publish(_Publish event, Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    await firestore.publishBucket(bucketId: event.bucketId, isPublish: true);
    questionnarieBloc.add(const QuestionnarieEvent.init());
    emit(const BucketState.success());
  }

  Future<void> _deleteAnswer(
      _DeleteAnswer event, Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    await firestore.deleteAnswer(
        bucketId: event.bucketId,
        existedQuestions: event.existedQuestions,
        indexToDelete: event.indexToDelete);

    emit(const BucketState.loaded());
  }

  Future<void> _deleteQuestion(
      _DeleteQuestion event, Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    await firestore.deleteQuestion(
        bucketId: event.bucketId, index: event.index);

    emit(const BucketState.loaded());
  }

  Future<void> _searchByName(
      _SearchByName event, Emitter<BucketState> emit) async {
    emit(const BucketState.searchLoading());

    if (event.name.isEmpty) {
      var questions = List.generate(event.bucket?.questions?.length ?? 0,
          (index) => event.bucket!.questions![index]);
      emit(BucketState.searchLoaded(questionsList: questions));
    } else {
      List<Questions> foundedQuestions = event.bucket!.questions!
          .where(
              (e) => e.name!.toLowerCase().contains(event.name.toLowerCase()))
          .toList();
      print(foundedQuestions);
      if (foundedQuestions.isEmpty) {
        emit(BucketState.searchLoaded(questionsList: foundedQuestions));
      } else {
        emit(BucketState.searchLoaded(questionsList: foundedQuestions));
      }
    }
  }
}
