import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui_admin/core/constants/strings.dart';
import 'package:micqui_admin/core/themes/theme.dart';
import 'package:micqui_admin/presentation/bloc/questionnarie/questionnarie_bloc.dart';
import 'package:micqui_admin/presentation/screens/bucket_screen.dart';
import 'package:micqui_admin/presentation/widgets/app_checkbox.dart';

import '../../core/constants/colors.dart';
import '../../data/models/bucket/bucket.dart';
import '../widgets/search_field.dart';

class QuestionaireScreen extends StatefulWidget {
  const QuestionaireScreen({Key? key}) : super(key: key);

  @override
  State<QuestionaireScreen> createState() => _QuestionaireScreenState();
}

class _QuestionaireScreenState extends State<QuestionaireScreen> {
  final _searchController = TextEditingController();

  List<Map<String, TextEditingController>> controllers = [];
  List<Map<String, FocusNode>> focuses = [];

  String value = 'All';

  List<bool> checkable = [];
  late List<String> selectedValues;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<QuestionnarieBloc, QuestionnarieState>(
        listener: (context, state) {
          if (state.bucket != null && state.bucket!.isNotEmpty) {
            checkable = List.generate(state.bucket!.length, (index) => false);
            selectedValues = List.generate(
                state.bucket!.length,
                (index) =>
                    state.bucket?[index].category ?? AppStrings.employee);
          }
          state.maybeMap(
              success: (_) => context
                  .read<QuestionnarieBloc>()
                  .add(const QuestionnarieEvent.init()),
              orElse: () {});
        },
        builder: (context, state) {
          return state.maybeMap(
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            orElse: () => Padding(
              padding: const EdgeInsets.all(37),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.questionnaires,
                    style: AppTheme.themeData.textTheme.headlineLarge!
                        .copyWith(color: AppColors.text),
                  ),
                  const SizedBox(
                    height: 52,
                  ),
                  Expanded(
                    child: Card(
                      elevation: 5,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 24,
                              right: 24,
                              top: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${AppStrings.buckets} (${state.bucket?.length ?? 0})",
                                  style: AppTheme
                                      .themeData.textTheme.titleLarge!
                                      .copyWith(color: AppColors.text),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: SizedBox(
                                    width: 620,
                                    height: 38,
                                    child: SearchField(
                                      searchController: _searchController,
                                      onChange: (String name) {
                                        context.read<QuestionnarieBloc>().add(
                                            QuestionnarieEvent.searchByName(
                                                name: name, category: value));
                                      },
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: categoryPicker(context),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: IconButton(
                                      onPressed: () {
                                        BlocProvider.of<QuestionnarieBloc>(
                                                context)
                                            .add(
                                          const QuestionnarieEvent.addBucket(),
                                        );
                                      },
                                      icon: const FaIcon(
                                        FontAwesomeIcons.circlePlus,
                                        color: AppColors.green,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          checkable.contains(true)
                              ? Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            state.bucket!.removeWhere(
                                                (bucket) => checkable[state
                                                    .bucket!
                                                    .indexOf(bucket)]);
                                            checkable.clear();
                                            checkable.addAll(List.generate(
                                                state.bucket!.length,
                                                (index) => false));
                                          },
                                          icon: const FaIcon(
                                            FontAwesomeIcons.solidTrashCan,
                                            size: 20,
                                            color: AppColors.accent,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 33,
                                        ),
                                        Text(
                                          'Delete ${checkable.where((value) => value).length} bucket',
                                          style: AppTheme
                                              .themeData.textTheme.labelMedium!
                                              .copyWith(
                                                  color: AppColors.accent),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              : const SizedBox(),
                          Divider(
                            color: Colors.grey.shade300,
                            thickness: 1,
                          ),
                          state.bucket == null
                              ? const SizedBox()
                              : state.maybeMap(
                                  searchLoading: (_) => const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                  orElse: () => bucketList(state),
                                ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget categoryPicker(BuildContext context) {
    return Container(
      height: 38,
      width: 145,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightGrey),
          borderRadius: BorderRadius.circular(10)),
      child: DropdownButton(
        isExpanded: true,
        dropdownColor: AppColors.white,
        focusColor: AppColors.white,
        value: value,
        icon: const Padding(
          padding: EdgeInsets.only(right: 15),
          child: FaIcon(
            FontAwesomeIcons.angleDown,
            size: 14,
            color: AppColors.text,
          ),
        ),
        borderRadius: BorderRadius.circular(10),
        underline: const SizedBox(),
        items: [
          DropdownMenuItem(
            value: AppStrings.all,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                AppStrings.all,
                style: AppTheme.themeData.textTheme.titleSmall!
                    .copyWith(color: AppColors.text),
              ),
            ),
          ),
          DropdownMenuItem(
            value: AppStrings.manager,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                AppStrings.manager,
                style: AppTheme.themeData.textTheme.titleSmall!.copyWith(
                  color: AppColors.text,
                ),
                overflow: TextOverflow.ellipsis,
                softWrap: false,
              ),
            ),
          ),
          DropdownMenuItem(
            value: AppStrings.employee,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                AppStrings.employee,
                style: AppTheme.themeData.textTheme.titleSmall!
                    .copyWith(color: AppColors.text),
                overflow: TextOverflow.ellipsis,
                softWrap: false,
              ),
            ),
          ),
        ],
        onChanged: (v) {
          value = v!;
          context.read<QuestionnarieBloc>().add(
                QuestionnarieEvent.sortByCategory(category: v),
              );
        },
      ),
    );
  }

  Expanded bucketList(QuestionnarieState state) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: state.bucket!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (controllers.length <= index) {
                  controllers.add({
                    'name': TextEditingController(
                        text: state.bucket?[index].name ?? 'Name'),
                    'description': TextEditingController(
                        text:
                            state.bucket?[index].description ?? 'Description'),
                    'category': TextEditingController(
                        text: state.bucket?[index].category ?? 'Category'),
                  });
                }
                if (focuses.length <= index) {
                  focuses.add({
                    'name': FocusNode(),
                    'description': FocusNode(),
                  });
                }

                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              BucketScreen(bucketId: state.bucket![index].id!),
                        ),
                      );
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 19, top: 14, left: 23),
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                right: 20,
                              ),
                              child: AppCheckbox(
                                size: 32,
                                iconSize: 22,
                                selectedIconColor: AppColors.green,
                                selectedColor: AppColors.white,
                                borderColor: AppColors.greyWhite,
                                isChecked: checkable[index],
                                onChange: (v) {
                                  setState(() {
                                    checkable[index] = v;
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
                                      FocusScope.of(context).requestFocus(
                                          focuses[index]['description']!);
                                    },
                                    onSelectionHandleTapped: () {
                                      showAboutDialog(context: context);
                                    },
                                  ),
                                  EditableText(
                                    textAlign: TextAlign.start,
                                    controller: controllers[index]
                                        ['description']!,
                                    focusNode: focuses[index]['description']!,
                                    cursorColor: AppColors.primary,
                                    backgroundCursorColor: AppColors.primary,
                                    style: AppTheme
                                        .themeData.textTheme.labelMedium!,
                                    selectionControls:
                                        MaterialTextSelectionControls(),
                                    keyboardType: TextInputType.text,
                                    maxLines: 1,
                                    onSubmitted: (text) {
                                      focuses[index]['description']!.unfocus();
                                      context.read<QuestionnarieBloc>().add(
                                            QuestionnarieEvent.setBucket(
                                              bucket: Bucket(
                                                id: state.bucket?[index].id,
                                                name: controllers[index]
                                                        ['name']!
                                                    .text,
                                                description: controllers[index]
                                                        ['description']!
                                                    .text,
                                                category: selectedValues[index],
                                              ),
                                              bucketId: state.bucket?[index].id,
                                            ),
                                          );
                                    },
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 20,
                                    child: DropdownButton(
                                      icon: const Visibility(
                                          visible: false,
                                          child: Icon(Icons.arrow_downward)),
                                      dropdownColor: AppColors.white,
                                      focusColor: AppColors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      value: selectedValues[index],
                                      underline: const SizedBox(),
                                      items: [
                                        DropdownMenuItem(
                                          value: AppStrings.manager,
                                          child: Text(
                                            AppStrings.manager,
                                            style: AppTheme.themeData.textTheme
                                                .labelMedium!
                                                .copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: false,
                                          ),
                                        ),
                                        DropdownMenuItem(
                                          value: AppStrings.employee,
                                          child: Text(
                                            AppStrings.employee,
                                            style: AppTheme.themeData.textTheme
                                                .labelMedium!
                                                .copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: false,
                                          ),
                                        ),
                                      ],
                                      onChanged: (v) {
                                        setState(
                                          () {
                                            state.bucket![index].id == null
                                                ? selectedValues[index] = v!
                                                : context
                                                    .read<QuestionnarieBloc>()
                                                    .add(
                                                      QuestionnarieEvent
                                                          .updateCategory(
                                                              bucketId: state
                                                                  .bucket![
                                                                      index]
                                                                  .id!,
                                                              category: v!),
                                                    );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
