import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui_admin/core/constants/strings.dart';
import 'package:micqui_admin/core/themes/theme.dart';
import 'package:micqui_admin/presentation/bloc/questionnarie/questionnarie_bloc.dart';
import 'package:micqui_admin/presentation/screens/bucket_screen.dart';
import 'package:micqui_admin/presentation/widgets/app_checkbox.dart';

import '../../app/router.dart';
import '../../core/constants/colors.dart';
import '../../data/models/bucket/bucket.dart';
import '../widgets/search_field.dart';
import '../widgets/toast.dart';

class QuestionaireScreen extends StatefulWidget {
  final double? mobileCardPadding;
  final double? mobileHeaderSize;
  final FontWeight? mobileFontWeight;
  final double? mobileBucketSize;
  final double? mobileRowSize;
  final double? mobileSearchIconSize;
  final double? mobileSearchIconSpace;

  const QuestionaireScreen({
    Key? key,
    this.mobileCardPadding,
    this.mobileHeaderSize,
    this.mobileBucketSize,
    this.mobileRowSize,
    this.mobileSearchIconSize,
    this.mobileSearchIconSpace,
    this.mobileFontWeight,
  }) : super(key: key);

  @override
  State<QuestionaireScreen> createState() => _QuestionaireScreenState();
}

class _QuestionaireScreenState extends State<QuestionaireScreen> {
  final _searchController = TextEditingController();

  List<TextEditingController> nameControllers = [];
  List<TextEditingController> descControllers = [];
  List<FocusNode> nameFocusNodes = [];
  List<FocusNode> descFocusNodes = [];
  String value = 'All';

  List<bool> checkable = [];
  List<String> selectedValues = [];
  late List<Bucket> buckets;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future(() => false),
      child: Scaffold(
        body: BlocConsumer<QuestionnarieBloc, QuestionnarieState>(
          listener: (context, state) {
            if (state.bucket != null && state.bucket!.isNotEmpty) {
              checkable = List.generate(state.bucket!.length, (index) => false);
              selectedValues = List.generate(
                  state.bucket!.length,
                  (index) =>
                      state.bucket?[index].category ?? AppStrings.employee);
              nameControllers.clear();
              descControllers.clear();
              nameFocusNodes.clear();
              descControllers.clear();
              for (var item in state.bucket!) {
                nameControllers
                    .add(TextEditingController(text: item.name ?? 'Name'));
                descControllers.add(TextEditingController(
                    text: item.description ?? 'Description'));
                nameFocusNodes.add(FocusNode());
                descFocusNodes.add(FocusNode());
              }
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
              orElse: () => SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(widget.mobileCardPadding ?? 37),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.questionnaires,
                        style: AppTheme.themeData.textTheme.headlineLarge!
                            .copyWith(
                                color: AppColors.text,
                                fontSize: widget.mobileHeaderSize ?? 38,
                                fontWeight:
                                    widget.mobileFontWeight ?? FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 52,
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
                                    top: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "${AppStrings.buckets} (${state.bucket?.length ?? 0})",
                                        style: AppTheme
                                            .themeData.textTheme.titleLarge!
                                            .copyWith(
                                                color: AppColors.text,
                                                fontSize:
                                                    widget.mobileBucketSize ??
                                                        16),
                                      ),
                                      Flexible(
                                        flex: 2,
                                        child: SizedBox(
                                          width: 620,
                                          height: 38,
                                          child: SearchField(
                                            spaceFromIcon:
                                                widget.mobileSearchIconSpace ??
                                                    45,
                                            searchController: _searchController,
                                            onChange: (String name) {
                                              context
                                                  .read<QuestionnarieBloc>()
                                                  .add(QuestionnarieEvent
                                                      .searchByName(
                                                          name: name,
                                                          category: value));
                                            },
                                            iconSize:
                                                widget.mobileSearchIconSize ??
                                                    20,
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: categoryPicker(context),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: IconButton(
                                          constraints: const BoxConstraints(),
                                          padding: const EdgeInsets.all(2),
                                          onPressed: () {
                                            BlocProvider.of<QuestionnarieBloc>(
                                                    context)
                                                .add(
                                              const QuestionnarieEvent
                                                  .addBucket(),
                                            );
                                          },
                                          icon: const FaIcon(
                                            FontAwesomeIcons.circlePlus,
                                            color: AppColors.green,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                checkable.contains(true)
                                    ? Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              IconButton(
                                                onPressed: () {
                                                  deleteBucketDialog(context,
                                                      text: checkable
                                                                  .where(
                                                                      (value) =>
                                                                          value)
                                                                  .length >
                                                              1
                                                          ? AppStrings
                                                              .areYouDeleteMore
                                                          : AppStrings
                                                              .areYouDelete,
                                                      checkable: checkable,
                                                      buckets: state.bucket);

                                                  // checkable.clear();
                                                  // checkable.addAll(
                                                  //     List.generate(
                                                  //         state.bucket!.length,
                                                  //         (index) => false));
                                                },
                                                icon: const FaIcon(
                                                  FontAwesomeIcons
                                                      .solidTrashCan,
                                                  size: 20,
                                                  color: AppColors.accent,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 33,
                                              ),
                                              Text(
                                                'Delete ${checkable.where((value) => value).length} bucket',
                                                style: AppTheme.themeData
                                                    .textTheme.labelMedium!
                                                    .copyWith(
                                                        color:
                                                            AppColors.accent),
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
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
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
                style: AppTheme.themeData.textTheme.titleSmall!.copyWith(
                    color: AppColors.text,
                    fontSize: widget.mobileBucketSize ?? 15),
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
                    fontSize: widget.mobileBucketSize ?? 15),
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
                style: AppTheme.themeData.textTheme.titleSmall!.copyWith(
                    color: AppColors.text,
                    fontSize: widget.mobileBucketSize ?? 15),
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
                return Container(
                  key: ObjectKey(index),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      widget.mobileSearchIconSpace == null
                          ? router.push('/bucket/bucketId=$index')
                          : Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => BucketScreen(
                                  bucketId: index,
                                  mobileSearchIconSpace:
                                      widget.mobileSearchIconSpace,
                                  mobileSearchIconSize:
                                      widget.mobileSearchIconSize,
                                  mobileRowSize: widget.mobileRowSize,
                                  mobileBucketSize: widget.mobileBucketSize,
                                  mobileHeaderSize: widget.mobileHeaderSize,
                                  mobileCardPadding: widget.mobileCardPadding,
                                  mobileFontWeight: widget.mobileFontWeight,
                                ),
                              ),
                            );
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 19, top: 14, left: 23),
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
                                  controller: nameControllers[index],
                                  focusNode: nameFocusNodes[index],
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
                                    nameFocusNodes[index].unfocus();
                                    FocusScope.of(context)
                                        .requestFocus(descFocusNodes[index]);
                                  },
                                  onSelectionHandleTapped: () {
                                    showAboutDialog(context: context);
                                  },
                                ),
                                EditableText(
                                  textAlign: TextAlign.start,
                                  controller: descControllers[index],
                                  focusNode: descFocusNodes[index],
                                  cursorColor: AppColors.primary,
                                  backgroundCursorColor: AppColors.primary,
                                  style:
                                      AppTheme.themeData.textTheme.labelMedium!,
                                  selectionControls:
                                      MaterialTextSelectionControls(),
                                  keyboardType: TextInputType.text,
                                  maxLines: 2,
                                  onSubmitted: (text) {
                                    descFocusNodes[index].unfocus();
                                    context.read<QuestionnarieBloc>().add(
                                          QuestionnarieEvent.setBucket(
                                            bucket: Bucket(
                                              id: state.bucket?[index].id,
                                              name: nameControllers[index].text,
                                              description:
                                                  descControllers[index].text,
                                              category: selectedValues[index],
                                            ),
                                            bucketId: state.bucket?[index].id,
                                          ),
                                        );
                                    showToast(msg: AppStrings.bucketIsCreated);
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
                                          '${AppStrings.manager} >',
                                          style: AppTheme
                                              .themeData.textTheme.labelMedium!
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
                                          '${AppStrings.employee} >',
                                          style: AppTheme
                                              .themeData.textTheme.labelMedium!
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
                                                                .bucket![index]
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

deleteBucketDialog(BuildContext context,
    {required String text,
    required List<Bucket>? buckets,
    required List<bool>? checkable}) {
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
      context.read<QuestionnarieBloc>().add(QuestionnarieEvent.deleteBucket(
            checkable: checkable,
            bucket: buckets,
          ));
      Navigator.pop(context);
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
    useRootNavigator: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

