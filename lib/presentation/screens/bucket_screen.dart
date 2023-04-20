import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui_admin/data/models/questions/questions.dart';
import 'package:micqui_admin/presentation/widgets/app_elevated_button.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/strings.dart';
import '../../core/services/service_locator.dart';
import '../../core/themes/theme.dart';
import '../bloc/bucket/bucket_bloc.dart';
import '../widgets/app_checkbox.dart';
import '../widgets/search_field.dart';

class BucketScreen extends StatefulWidget {
  final String bucketId;

  const BucketScreen({
    Key? key,
    required this.bucketId,
  }) : super(key: key);

  @override
  State<BucketScreen> createState() => _BucketScreenState();
}

class _BucketScreenState extends State<BucketScreen> {
  final BucketBloc _bloc = sl<BucketBloc>();
  final _searchController = TextEditingController();
  List<Map<String, TextEditingController>> controllers = [];
  List<Map<String, FocusNode>> focuses = [];
  late bool? published;

  List<bool> isChecked = [];

  @override
  void initState() {
    _bloc.add(BucketEvent.init(bucketId: widget.bucketId));
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
            orElse: () => Padding(
              padding: const EdgeInsets.all(37),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.bucket,
                    style: AppTheme.themeData.textTheme.headlineLarge!
                        .copyWith(color: AppColors.text),
                  ),
                  Text(
                    state.bucket!.name!,
                    style: AppTheme.themeData.textTheme.labelMedium,
                  ),
                  state.bucket!.published!
                      ? Row(
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
                              style: AppTheme.themeData.textTheme.labelMedium,
                            ),
                          ],
                        )
                      : Row(
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
                              style: AppTheme.themeData.textTheme.labelMedium,
                            ),
                          ],
                        ),
                  const SizedBox(
                    height: 17,
                  ),
                  Expanded(
                    child: Card(
                      elevation: 5,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 24, right: 24, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${AppStrings.questions} (${state.bucket!.questions?.length ?? 0})",
                                  style: AppTheme
                                      .themeData.textTheme.titleLarge!
                                      .copyWith(color: AppColors.text),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: SizedBox(
                                    width: 706,
                                    height: 38,
                                    child: SearchField(
                                        searchController: _searchController,
                                        onChange: (name) {
                                          // context.read<QuestionnarieBloc>().add(
                                          //     QuestionnarieEvent.searchByName(
                                          //         name: name, category: value));
                                        }),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: IconButton(
                                      onPressed: () {
                                        context.read<BucketBloc>().add(
                                            BucketEvent.addQuestion(
                                                bucket: state.bucket));
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
                          state.bucket!.questions == null
                              ? const SizedBox()
                              : questionList(state),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  state.bucket!.published!
                      ? SizedBox(
                          width: 278,
                          child: AppElevatedButton(
                            text: AppStrings.removeFromRelease,
                            onPressed: () {
                              published = false;
                              context.read<BucketBloc>().add(
                                  BucketEvent.removeFromRelease(
                                      bucketId: state.bucket!.id!,
                                      bucket: state.bucket,
                                      stateQuestions: state.bucket!.questions));
                            },
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 225,
                              child: AppElevatedButton(
                                text: AppStrings.publish,
                                onPressed: () {
                                  context.read<BucketBloc>().add(
                                      BucketEvent.publish(
                                          bucketId: state.bucket!.id!));
                                },
                              ),
                            ),
                            SizedBox(
                                width: 164,
                                child: AppElevatedButton(
                                    color: AppColors.accent,
                                    text: AppStrings.delete,
                                    onPressed: () {}))
                          ],
                        ),
                ],
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
                itemCount: state.bucket!.questions!.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if (controllers.length <= index) {
                    controllers.add({
                      'name': TextEditingController(
                          text: state.bucket!.questions![index].name ?? 'Name'),
                    });
                  }
                  if (focuses.length <= index) {
                    focuses.add({
                      'name': FocusNode(),
                    });
                  }
                  List<String>? variants =
                      state.bucket!.questions![index].variants;
                  isChecked = List.generate(variants!.length, (index) => false);
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
                          bottom: 19, top: 14, left: 23, right: 23),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: EditableText(
                                  textAlign: TextAlign.start,
                                  controller: controllers[index]['name']!,
                                  focusNode: focuses[index]['name']!,
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
                                    focuses[index]['name']!.unfocus();
                                    context.read<BucketBloc>().add(
                                          BucketEvent.setQuestion(
                                            stateQuestions:
                                                state.bucket!.questions,
                                            bucket: state.bucket,
                                            bucketId: state.bucket!.id!,
                                            questions: Questions(
                                                name: controllers[index]
                                                        ['name']!
                                                    .text),
                                          ),
                                        );
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
                                  setState(() {
                                    state.bucket!.questions!.removeAt(index);
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
                          state.bucket!.questions![index].variants!.isEmpty ||
                                  state.bucket!.questions![index].variants ==
                                      null
                              ? const SizedBox()
                              : Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: answersList(variants),
                                ),
                          const SizedBox(
                            height: 23,
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  variants.add('value');

                                  print(isChecked);
                                });
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

  Widget answersList(List<dynamic> variants) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: variants.length,
      itemBuilder: (context, index) {
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
                        .copyWith(fontWeight: FontWeight.w600),
                    cursorColor: AppColors.primary,
                    backgroundCursorColor: AppColors.primary,
                    selectionControls: MaterialTextSelectionControls(),
                    keyboardType: TextInputType.text,
                    maxLines: 1,
                    focusNode: FocusNode(),
                    controller: _searchController,
                  ),
                ],
              ),
            ),
            IconButton(
              constraints: const BoxConstraints(),
              padding: const EdgeInsets.all(2),
              onPressed: () {
                setState(() {
                  variants.removeAt(index);
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
}
