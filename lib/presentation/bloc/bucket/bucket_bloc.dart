import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micqui_admin/core/constants/exceptions.dart';

import '../../../data/models/answer/answer.dart';
import '../../../data/models/bucket/bucket.dart';
import '../../../data/models/questions/questions.dart';
import '../../../data/repositories/bucket_repository.dart';
import '../questionnarie/questionnarie_bloc.dart';

part 'bucket_event.dart';

part 'bucket_state.dart';

part 'bucket_bloc.freezed.dart';

class BucketBloc extends Bloc<BucketEvent, BucketState> {
  final BucketRepository firestore;
  final QuestionnarieBloc questionnarieBloc;

  BucketBloc({
    required this.firestore,
    required this.questionnarieBloc,
  }) : super(const BucketState.initial()) {
    on<BucketEvent>(_mapBlocToState);
  }

  Future<void> _mapBlocToState(BucketEvent event,
      Emitter<BucketState> emit) async {
    await event.maybeMap(
      init: (e) {},
      addQuestion: (e) => _addQuestion(e, emit),
      addAnswer: (e) => _addAnswer(e, emit),
      searchByName: (e) => _searchByName(e, emit),
      setQuestion: (e) => _setQuestion(e, emit),
      // setAnswer: (e) => _setAnswer(e, emit),
      removeFromRelease: (e) => _removeFromRelease(e, emit),
      publish: (e) => _publish(e, emit),
      deleteAnswer: (e) => _deleteAnswer(e, emit),
      deleteQuestion: (e) => _deleteQuestion(e, emit),
      deleteBucket: (e)=> _deleteFullBucket(e, emit),
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

  Future<void> _addQuestion(_AddQuestion event,
      Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    List<Questions> questions = List.from(event.questions!);
    const question = Questions(name: 'Question Name', variants: []);
    questions.add(question);

    emit(BucketState.loaded(questionsList: questions));
  }

  Future<void> _setQuestion(_SetQuestion event,
      Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    try {
      final questions = await firestore.setQuestion(
        bucketId: event.bucketId,
        questionId: event.questionId,
        question: event.question,
        index: event.questionIndex,
      );
      questionnarieBloc.add(const QuestionnarieEvent.init());
      emit(BucketState.loaded(questionsList: questions));
    } on BadRequestException catch (e) {
      emit(BucketState.error(error: e.message));
    }
  }

  Future<void> _addAnswer(_AddAnswer event, Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    List<Answers> answers = List.from(event.answerList!);
    List<Questions> questions = List.from(event.questions!);
    // answers.add(const Answers(name: 'New Question', isRight: false));

    Questions question = Questions(
        id: event.question.id, name: event.question.name, variants: []);
    questions[event.questionIndex] = question;
    emit(BucketState.loaded(questionsList: questions));
  }

  // Future<void> _setAnswer(_SetAnswer event, Emitter<BucketState> emit) async {
  //   emit(const BucketState.loading());
  //   try {
  //     final
  //     // final questions = await firestore.setAnswer(
  //     //   bucketId: event.bucketId,
  //     //   existedQuestions: event.question,
  //     //   answer: event.answer,
  //     // );
  //     questionnarieBloc.add(const QuestionnarieEvent.init());
  //
  //     emit(BucketState.loaded(questionsList: questions));
  //   } on BadRequestException catch (e) {
  //     emit(BucketState.error(error: e.message));
  //   }
  // }

  Future<void> _removeFromRelease(_RemoveFromRelease event,
      Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    await firestore.publishBucket(bucketId: event.bucketId, isPublish: false);
    questionnarieBloc.add(const QuestionnarieEvent.init());
    emit(const BucketState.isPublished(isPublished: false));
  }

  Future<void> _publish(_Publish event, Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    await firestore.publishBucket(bucketId: event.bucketId, isPublish: true);
    questionnarieBloc.add(const QuestionnarieEvent.init());
    emit(const BucketState.success());
  }

  Future<void> _deleteAnswer(_DeleteAnswer event,
      Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    try {
      final questions = await firestore.deleteAnswer(
          bucketId: event.bucketId,
          existedQuestions: event.existedQuestions,
          indexToDelete: event.indexToDelete);
      questionnarieBloc.add(const QuestionnarieEvent.init());
      emit(BucketState.loaded(questionsList: questions));
    } on Error {
      List<Questions> questions = List.from(event.questions!);

      Questions currentQuestion = event.existedQuestions;
      currentQuestion.variants!.removeAt(event.indexToDelete);
      questions.where((e) => e.id == currentQuestion.id);
      int index = questions.indexWhere((question) =>
      question.id == currentQuestion.id);

      if (index != -1) {
        questions[index] = currentQuestion;
      }
      emit(BucketState.loaded(questionsList: questions));
    }
  }

  Future<void> _deleteQuestion(_DeleteQuestion event,
      Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    try {
      final questions = await firestore.deleteQuestion(
          bucketId: event.bucketId, index: event.index);
      questionnarieBloc.add(const QuestionnarieEvent.init());
      emit(BucketState.loaded(questionsList: questions));
    } on Error {
      List<Questions> questions = List.from(event.questions!);
      questions.removeAt(event.index);

      emit(BucketState.loaded(questionsList: questions));
    }
  }

  Future<void> _deleteFullBucket(_DeleteFullBucket event,
      Emitter<BucketState> emit) async {
    emit(const BucketState.loading());
    try {
      await firestore.deleteFullBucket(bucketId: event.bucketId);
      questionnarieBloc.add(const QuestionnarieEvent.init());
      emit(const BucketState.success());
    } on BadRequestException catch (e) {
      emit(BucketState.error(error: e.message));
    }
  }

  Future<void> _searchByName(_SearchByName event,
      Emitter<BucketState> emit) async {
    emit(const BucketState.searchLoading());
    final q = await firestore.getQuestions(bucketId: event.bucket!.id!);
    if (event.name.isEmpty) {
      var questions = List.generate(q?.length ?? 0, (index) => q![index]);
      emit(BucketState.loaded(questionsList: questions));
    } else {
      List<Questions> foundedQuestions = q!
          .where(
              (e) => e.name!.toLowerCase().contains(event.name.toLowerCase()))
          .toList();

      if (foundedQuestions.isEmpty) {
        emit(BucketState.loaded(questionsList: foundedQuestions));
      } else {
        emit(BucketState.loaded(questionsList: foundedQuestions));
      }
    }
  }
}
