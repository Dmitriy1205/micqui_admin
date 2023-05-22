import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micqui_admin/data/models/answer/answer.dart';
import 'package:micqui_admin/data/models/questions/questions.dart';
import 'package:micqui_admin/data/models/user/user_model.dart';

import '../../../data/repositories/bucket_repository.dart';
import '../../../data/repositories/users_repository.dart';

part 'responses_event.dart';

part 'responses_state.dart';

part 'responses_bloc.freezed.dart';

class ResponsesBloc extends Bloc<ResponsesEvent, ResponsesState> {
  final BucketRepository _bucketRepository;
  final UsersRepository _userRepository;

  ResponsesBloc({
    required BucketRepository bucketRepository,
    required UsersRepository userRepository,
  })  : _bucketRepository = bucketRepository,
        _userRepository = userRepository,
        super(const ResponsesState.initial()) {
    on<ResponsesEvent>(_mapBlocToState);
  }

  Future<void> _mapBlocToState(
    ResponsesEvent event,
    Emitter<ResponsesState> emit,
  ) async {
    await event.map(
      init: (e) => _init(e, emit),
      searchByName: (e) => _searchByName(e, emit),
    );
  }

  Future<void> _init(_Init event, Emitter<ResponsesState> emit) async {
    emit(const ResponsesState.loading());
    List<Questions>? allBucketQuestions =
        await _bucketRepository.getQuestions(bucketId: event.bucketId!);
    List<Answers>? allAnswers = await _bucketRepository.getAnswers();
    List<UserModel>? allUsers = await _userRepository.getUsers();

    //delete all not existing bucketId answers
    allAnswers!.removeWhere((element) => element.bucketId != event.bucketId);

    //get all existing pair of all answers
    List<QuestionAnswer> allQuestionAnswers = allAnswers
        .map((answers) => answers.answers)
        .whereType<List<QuestionAnswer>>()
        .expand((questionAnswers) => questionAnswers)
        .toList();

    List<Questions> filteredQuestionList = allBucketQuestions!.map((question) {
      List<QuestionAnswer> matchingAnswers = [];
      List<UserModel> matchingUsers = [];

      for (UserModel user in allUsers!) {
        for (Answers answers in allAnswers) {
          if (answers.userId == user.id) {
            for (QuestionAnswer questionAnswer in answers.answers!) {
              if (questionAnswer.question == question.name) {
                matchingAnswers.add(questionAnswer);
                matchingUsers.add(user);
                break;
              }
            }
          }
        }
      }

      return question.copyWith(
          variants: matchingAnswers.isNotEmpty ? matchingAnswers : [],
          users: matchingUsers.isNotEmpty ? matchingUsers : []);
    }).toList();

    emit(ResponsesState.loaded(
      questions: filteredQuestionList,
    ));
  }

  Future<void> _searchByName(
      _SearchByName event, Emitter<ResponsesState> emit) async {
    emit(const ResponsesState.searchLoading());
    List<Questions>? allBucketQuestions =
        await _bucketRepository.getQuestions(bucketId: event.bucketId!);
    List<Answers>? allAnswers = await _bucketRepository.getAnswers();
    List<UserModel>? allUsers = await _userRepository.getUsers();

    //delete all not existing bucketId answers
    allAnswers!.removeWhere((element) => element.bucketId != event.bucketId);

    //get all existing pair of all answers
    List<QuestionAnswer> allQuestionAnswers = allAnswers
        .map((answers) => answers.answers)
        .whereType<List<QuestionAnswer>>()
        .expand((questionAnswers) => questionAnswers)
        .toList();

    List<Questions> filteredQuestionList = allBucketQuestions!.map((question) {
      List<QuestionAnswer> matchingAnswers = [];
      List<UserModel> matchingUsers = [];

      for (UserModel user in allUsers!) {
        for (Answers answers in allAnswers) {
          if (answers.userId == user.id) {
            for (QuestionAnswer questionAnswer in answers.answers!) {
              if (questionAnswer.question == question.name) {
                matchingAnswers.add(questionAnswer);
                matchingUsers.add(user);
                break;
              }
            }
          }
        }
      }

      return question.copyWith(
          variants: matchingAnswers.isNotEmpty ? matchingAnswers : [],
          users: matchingUsers.isNotEmpty ? matchingUsers : []);
    }).toList();
    if (event.name.isEmpty) {
      var questions = List.generate(filteredQuestionList.length ?? 0,
          (index) => filteredQuestionList[index]);
      emit(ResponsesState.loaded(questions: questions));
    } else {
      List<Questions> foundedQuestions = filteredQuestionList
          .where(
              (e) => e.name!.toLowerCase().contains(event.name.toLowerCase()))
          .toList();

      if (foundedQuestions.isEmpty) {
        emit(ResponsesState.loaded(questions: foundedQuestions));
      } else {
        emit(ResponsesState.loaded(questions: foundedQuestions));
      }
    }
  }
}
