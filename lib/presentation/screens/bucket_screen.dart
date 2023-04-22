import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui_admin/data/models/questions/questions.dart';
import 'package:micqui_admin/presentation/bloc/questionnarie/questionnarie_bloc.dart';
import 'package:micqui_admin/presentation/widgets/app_elevated_button.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/strings.dart';
import '../../core/services/service_locator.dart';
import '../../core/themes/theme.dart';
import '../../data/models/answer/answer.dart';
import '../../data/models/bucket/bucket.dart';
import '../bloc/bucket/bucket_bloc.dart';
import '../widgets/app_checkbox.dart';
import '../widgets/search_field.dart';

class BucketScreen extends StatefulWidget {
  final int bucketId;
  final double? mobileCardPadding;
  final double? mobileHeaderSize;
  final double? mobileBucketSize;
  final double? mobileRowSize;
  final double? mobileSearchIconSize;
  final double? mobileSearchIconSpace;

  const BucketScreen({
    Key? key,
    required this.bucketId,
    this.mobileCardPadding,
    this.mobileHeaderSize,
    this.mobileBucketSize,
    this.mobileRowSize,
    this.mobileSearchIconSize,
    this.mobileSearchIconSpace,
  }) : super(key: key);

  @override
  State<BucketScreen> createState() => _BucketScreenState();
}

class _BucketScreenState extends State<BucketScreen> {
  final BucketBloc _bloc = sl<BucketBloc>();
  final _searchController = TextEditingController();
  List<Map<String, TextEditingController>> questionControllers = [];
  List<Map<String, TextEditingController>> answerControllers = [];
  List<Map<String, FocusNode>> questionFocuses = [];
  List<Map<String, FocusNode>> answerFocuses = [];
  late List<Questions> questions;
  late List<Answer>? answerVariant;
  late bool published;
  late Bucket bucket;

  List<bool> isChecked = [];

  @override
  void initState() {
    bucket = context.read<QuestionnarieBloc>().state.bucket![widget.bucketId];
    questions = List.generate(
        bucket.questions?.length ?? 0, (index) => bucket.questions![index]);

    published = bucket.published!;
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<BucketBloc, BucketState>(
        bloc: _bloc,
        listener: (context, state) {
          state.maybeMap(
              searchLoaded: (_) => questions = state.questionsList!,
              loaded: (_) => questions = List.generate(
                  bucket.questions?.length ?? 0,
                  (index) => bucket.questions![index]),
              isPublished: (_) => published = state.isPublished!,
              questionAdded: (_) => questions.add(state.questions!),
              answerAdded: (i) => questions[i.questionIndex] = i.question!,
              error: (e) => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: AppColors.accent,
                      duration: const Duration(seconds: 5),
                      content: Text(
                        e.error,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              success: (_) => Navigator.pop(context),
              orElse: () {});
        },
        builder: (context, state) {
          return state.maybeMap(
            error: (e) => Center(
              child: Text(e.error),
            ),
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            orElse: () => SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(widget.mobileCardPadding ?? 37),
                child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    published
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppStrings.bucket,
                                    style: AppTheme
                                        .themeData.textTheme.headlineLarge!
                                        .copyWith(
                                            color: AppColors.text,
                                            fontSize:
                                                widget.mobileHeaderSize ?? 38),
                                  ),
                                  Text(
                                    bucket.name!,
                                    style: AppTheme
                                        .themeData.textTheme.labelMedium,
                                  ),
                                  Row(
                                    children: [
                                      const FaIcon(
                                        FontAwesomeIcons.solidCircle,
                                        size: 8,
                                        color: AppColors.green,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        AppStrings.published,
                                        style: AppTheme
                                            .themeData.textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${bucket.id}',
                                    style: AppTheme
                                        .themeData.textTheme.titleMedium!
                                        .copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: widget.mobileHeaderSize ?? 32,
                                    ),
                                  ),
                                  SizedBox(
                                    width: widget.mobileHeaderSize ?? 48,
                                  ),
                                  FaIcon(
                                    FontAwesomeIcons.qrcode,
                                    size: widget.mobileHeaderSize ?? 64,
                                    color: AppColors.text,
                                  ),
                                ],
                              )
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppStrings.bucket,
                                    style: AppTheme
                                        .themeData.textTheme.headlineLarge!
                                        .copyWith(
                                            color: AppColors.text,
                                            fontSize:
                                                widget.mobileHeaderSize ?? 38),
                                  ),
                                  Text(
                                    bucket.name!,
                                    style: AppTheme
                                        .themeData.textTheme.labelMedium,
                                  ),
                                  Row(
                                    children: [
                                      const FaIcon(
                                        FontAwesomeIcons.solidCircle,
                                        size: 8,
                                        color: AppColors.lightGrey,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        AppStrings.draft,
                                        style: AppTheme
                                            .themeData.textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(),
                            ],
                          ),
                    const SizedBox(
                      height: 17,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxHeight:
                        550.0, // set the maximum height of the sized box
                      ),
                      child: SizedBox(
                         width: double.infinity,
                        child: Card(
                          elevation: 5,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: widget.mobileRowSize ?? 24,
                                    right: widget.mobileRowSize ?? 24,
                                    top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${AppStrings.questions} (${questions.isEmpty ? 0 : questions.length})",
                                      style: AppTheme
                                          .themeData.textTheme.titleLarge!
                                          .copyWith(
                                              color: AppColors.text,
                                              fontSize:
                                                  widget.mobileBucketSize ?? 16),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      child: SizedBox(
                                        width: 706,
                                        height: 38,
                                        child: SearchField(
                                          spaceFromIcon:
                                              widget.mobileSearchIconSpace ?? 45,
                                          searchController: _searchController,
                                          onChange: (name) {
                                            _bloc.add(BucketEvent.searchByName(
                                              name: name,
                                              bucket: bucket,
                                            ));
                                          },
                                          iconSize:
                                              widget.mobileSearchIconSize ?? 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: IconButton(
                                          onPressed: () {
                                            _bloc.add(
                                                const BucketEvent.addQuestion());
                                          },
                                          icon: const FaIcon(
                                            FontAwesomeIcons.circlePlus,
                                            color: AppColors.green,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.grey.shade300,
                                thickness: 1,
                              ),
                              questions.isEmpty
                                  ? const SizedBox()
                                  : state.maybeMap(
                                      searchLoading: (_) => const Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                      orElse: () => questionList(state),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    published
                        ? SizedBox(
                          width: 278,
                          child: AppElevatedButton(
                            text: AppStrings.removeFromRelease,
                            onPressed: () {
                              _bloc.add(BucketEvent.removeFromRelease(
                                  bucketId: bucket.id!));
                            },
                          ),
                        )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: SizedBox(
                                  width: 225,
                                  child: AppElevatedButton(
                                    text: AppStrings.publish,
                                    onPressed: () {
                                      _bloc.add(BucketEvent.publish(
                                          bucketId: bucket.id!));
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: SizedBox(
                                    width: 164,
                                    child: AppElevatedButton(
                                        color: AppColors.accent,
                                        text: AppStrings.delete,
                                        onPressed: () {
                                          showAlertDialog(context,
                                              text: AppStrings.areYouDelete);
                                        })),
                              )
                            ],
                          ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Expanded questionList(BucketState state) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: questions.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if (questionControllers.length <= index) {
                    questionControllers.add({
                      'name': TextEditingController(
                          text: questions[index].name ?? 'Name'),
                    });
                  }
                  if (questionFocuses.length <= index) {
                    questionFocuses.add({
                      'name': FocusNode(),
                    });
                  }

                  answerVariant = List.generate(
                      questions[index].variants?.length ?? 0,
                      (i) => questions[index].variants![i]);
                  isChecked = List.generate(
                      answerVariant?.length ?? 0, (index) => false);
                  return Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 19, top: 14, left: 23, right: 37),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: EditableText(
                                  textAlign: TextAlign.start,
                                  controller: questionControllers[index]
                                      ['name']!,
                                  focusNode: questionFocuses[index]['name']!,
                                  cursorColor: AppColors.primary,
                                  backgroundCursorColor: AppColors.primary,
                                  style: AppTheme
                                      .themeData.textTheme.labelMedium!
                                      .copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                  selectionControls:
                                      MaterialTextSelectionControls(),
                                  keyboardType: TextInputType.text,
                                  maxLines: 1,
                                  onSubmitted: (text) {
                                    questionFocuses[index]['name']!.unfocus();
                                    _bloc.add(BucketEvent.setQuestion(
                                        bucketId: bucket.id!,
                                        questionId: questions[index].id,
                                        question: Questions(
                                            id: questions[index].id,
                                            name: questionControllers[index]
                                                    ['name']!
                                                .text),
                                        questionIndex: index));
                                  },
                                  onSelectionHandleTapped: () {
                                    showAboutDialog(context: context);
                                  },
                                ),
                              ),
                              IconButton(
                                constraints: const BoxConstraints(),
                                padding: const EdgeInsets.all(2),
                                onPressed: () {
                                  _bloc.add(BucketEvent.deleteQuestion(
                                      bucketId: bucket.id!, index: index));

                                  setState(() {
                                    // showAlertDialog(context,
                                    //     text: AppStrings.areYouQuestion);
                                    questions.removeAt(index);
                                  });
                                },
                                icon: const FaIcon(
                                  FontAwesomeIcons.solidTrashCan,
                                  size: 20,
                                  color: AppColors.accent,
                                ),
                              ),
                            ],
                          ),
                          answerVariant == null
                              ? const SizedBox()
                              : Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: answersList(
                                      answerVariant!, questions[index]),
                                ),
                          const SizedBox(
                            height: 23,
                          ),
                          IconButton(
                              onPressed: () {
                                _bloc.add(BucketEvent.addAnswer(
                                    question: questions[index],
                                    questionIndex: index,
                                    answerList: questions[index].variants));
                              },
                              icon: const FaIcon(
                                FontAwesomeIcons.circlePlus,
                                color: AppColors.green,
                              )),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget answersList(List<Answer> answer, Questions currentQuestion) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: answerVariant!.length,
      itemBuilder: (context, index) {
        if (answerControllers.length <= index) {
          answerControllers.add({
            'answer': TextEditingController(
                text: answer[index].name ?? 'Answer Name'),
          });
        }
        if (answerFocuses.length <= index) {
          answerFocuses.add({
            'answer': FocusNode(),
          });
        }
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
              ),
              child: AppCheckbox(
                size: 32,
                iconSize: 22,
                selectedIconColor: AppColors.green,
                selectedColor: AppColors.white,
                borderColor: AppColors.greyWhite,
                isChecked: isChecked[index],
                onChange: (v) {
                  setState(() {
                    isChecked[index] = v;
                  });
                },
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EditableText(
                    textAlign: TextAlign.start,
                    style: AppTheme.themeData.textTheme.labelMedium!
                        .copyWith(fontSize: 14),
                    cursorColor: AppColors.primary,
                    backgroundCursorColor: AppColors.primary,
                    selectionControls: MaterialTextSelectionControls(),
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                    focusNode: answerFocuses[index]['answer']!,
                    controller: answerControllers[index]['answer']!,
                    onSubmitted: (text) {
                      answerFocuses[index]['answer']!.unfocus();
                      _bloc.add(BucketEvent.setAnswer(
                        bucketId: bucket.id!,
                        questionIndex: 1,
                        question: currentQuestion,
                        answer: Answer(
                            name: answerControllers[index]['answer']!.text,
                            isRight: false),
                      ));
                    },
                  ),
                ],
              ),
            ),
            IconButton(
              constraints: const BoxConstraints(),
              padding: const EdgeInsets.all(2),
              onPressed: () {
                _bloc.add(BucketEvent.deleteAnswer(
                    bucketId: bucket.id!,
                    existedQuestions: currentQuestion,
                    indexToDelete: index));
                setState(() {
                  answer.removeAt(index);
                });
              },
              icon: const FaIcon(
                FontAwesomeIcons.solidTrashCan,
                size: 20,
                color: AppColors.accent,
              ),
            ),
          ],
        );
      },
    );
  }

  showAlertDialog(BuildContext context, {required String text}) {
    Widget cancelButton = TextButton(
      child: const Text(
        AppStrings.cancel,
        style: TextStyle(color: AppColors.text),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: const Text(
        AppStrings.delete,
        style: TextStyle(color: AppColors.text),
      ),
      onPressed: () {
        // context.read<AuthBloc>().add(const AuthEvent.logout());
      },
    );

    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      title: Text(AppStrings.warning,
          style: AppTheme.themeData.textTheme.titleSmall),
      content: Text(text, style: AppTheme.themeData.textTheme.bodySmall),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
