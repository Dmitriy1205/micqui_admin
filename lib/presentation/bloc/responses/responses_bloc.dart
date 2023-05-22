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

    //get all finished questions
    List<Answers> completedAnswers =
        allAnswers.where((answer) => answer.completed == true).toList();
    List<bool>? completedQuiz = List.generate(completedAnswers.length,
        (index) => completedAnswers[index].completed == true);
    //get joined users
    List<Answers> joinedAnswers =
        allAnswers.where((answer) => answer.joined == true).toList();
    List<bool>? joinedQuiz = List.generate(
        joinedAnswers.length, (index) => joinedAnswers[index].joined == true);

    //get all existing pair of all answers
    List<QuestionAnswer> allQuestionAnswers = allAnswers
        .map((answers) => answers.answers)
        .whereType<List<QuestionAnswer>>()
        .expand((questionAnswers) => questionAnswers)
        .toList();
    print(allQuestionAnswers.length);
////
//     List<Questions> filteredQuestionList = allBucketQuestions!.map((question) {
//       List<QuestionAnswer>? matchingAnswers = allQuestionAnswers
//           .where(
//             (answer) => answer.question == question.name,
//           )
//           .toList();
//
//       List<UserModel> matchingUsers = allUsers!
//           .where((user) => allAnswers.any((answer) => user.id == answer.userId))
//           .toList();
//       return question.copyWith(
//           variants: matchingAnswers.isNotEmpty ? matchingAnswers : [],
//           users: matchingUsers.isNotEmpty ? matchingUsers : []);
//     }).toList();
////
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
        completedQuiz: completedQuiz.length,
        joined: joinedQuiz.length));
  }

  Future<void> _searchByName(
      _SearchByName event, Emitter<ResponsesState> emit) async {
    emit(const ResponsesState.searchLoading());
    final allQuestions =
        await _bucketRepository.getQuestions(bucketId: event.bucketId!);
    if (event.name.isEmpty) {
      var questions = List.generate(
          allQuestions?.length ?? 0, (index) => allQuestions![index]);
      emit(ResponsesState.loaded(questions: questions));
    } else {
      List<Questions> foundedQuestions = allQuestions!
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
