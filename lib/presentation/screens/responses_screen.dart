import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui_admin/data/models/questions/questions.dart';
import 'package:micqui_admin/presentation/bloc/responses/responses_bloc.dart';
import '../../app/router.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/strings.dart';
import '../../core/services/service_locator.dart';
import '../../core/themes/theme.dart';
import '../../core/utils/utils.dart';
import '../../data/models/answer/answer.dart';
import '../../data/models/user/user_model.dart';
import '../bloc/bucket/bucket_bloc.dart';
import '../widgets/brief_card.dart';
import '../widgets/search_field.dart';

class ResponsesScreen extends StatefulWidget {
  final String bucketId;
  final String bucketName;
  final double? mobileCardPadding;
  final double? mobileHeaderSize;
  final FontWeight? mobileFontWeight;
  final double? mobileBucketSize;
  final double? mobileRowSize;
  final double? mobileSearchIconSize;
  final double? mobileSearchIconSpace;

  const ResponsesScreen({
    Key? key,
    required this.bucketId,
    this.mobileCardPadding,
    this.mobileHeaderSize,
    this.mobileBucketSize,
    this.mobileRowSize,
    this.mobileSearchIconSize,
    this.mobileSearchIconSpace,
    this.mobileFontWeight,
    required this.bucketName,
  }) : super(key: key);

  @override
  State<ResponsesScreen> createState() => _ResponsesScreenState();
}

class _ResponsesScreenState extends State<ResponsesScreen> {
  final ResponsesBloc _bloc = sl<ResponsesBloc>();
  final _searchController = TextEditingController();
  List<bool> showAnswers = [];

  // List<Questions> questions = [];
  // late Bucket bucket;

  @override
  void initState() {
    _bloc.add(ResponsesEvent.init(bucketId: widget.bucketId));
    // questions = List.generate(
    //     bucket.questions.length, (index) => bucket.questions[index]);

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
      body: BlocBuilder<ResponsesBloc, ResponsesState>(
        bloc: _bloc,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 48,
                          height: 48,
                          child: Card(
                            elevation: 2,
                            child: IconButton(
                                constraints: const BoxConstraints(),
                                padding: const EdgeInsets.all(5),
                                onPressed: () {
                                  widget.mobileCardPadding == null
                                      ? router.pop()
                                      : Navigator.pop(context);
                                },
                                icon: const Icon(Icons.arrow_back)),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.responses,
                              style: AppTheme.themeData.textTheme.headlineLarge!
                                  .copyWith(
                                      color: AppColors.text,
                                      fontSize: widget.mobileHeaderSize ?? 38,
                                      fontWeight: widget.mobileFontWeight ??
                                          FontWeight.w400),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.bucketName,
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
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    BriefCard(
                      quantity: context.read<BucketBloc>().state.completedQuiz ?? 0,
                      joined: context.read<BucketBloc>().state.joined ?? 0,
                    ),
                    const SizedBox(
                      height: 37,
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
                                      "${AppStrings.responses} (${state.questions!.isEmpty ? 0 : state.questions!.length})",
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
                                        width: 706,
                                        height: 38,
                                        child: SearchField(
                                          spaceFromIcon:
                                              widget.mobileSearchIconSpace ??
                                                  45,
                                          searchController: _searchController,
                                          onChange: (name) {
                                            _bloc.add(
                                                ResponsesEvent.searchByName(
                                              name: name,
                                              bucketId: widget.bucketId,
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
                                        width: widget.mobileRowSize ?? 50,
                                        height: 50,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.grey.shade300,
                                thickness: 1,
                              ),
                              state.questions!.isEmpty
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
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Expanded questionList(ResponsesState state) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: state.questions!.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {

                  if (showAnswers.length < state.questions!.length) {
                    showAnswers.add(false);
                  }
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
                                child: Text(
                                  state.questions![index].name!,
                                  style: AppTheme.themeData.textTheme.labelMedium!
                                      .copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: answersList(
                              state.questions![index].variants,
                              state.questions![index].users,
                              showAnswers[index],
                              state.questions![index],
                              index,
                            ),
                          ),
                          const SizedBox(
                            height: 17,
                          ),
                          state.questions![index].variants.length > 3
                              ? InkWell(
                            customBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),),
                            hoverColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  onTap: () {
                                    setState(() {
                                      showAnswers[index] = !showAnswers[index];
                                    });
                                  },
                                  child: Text(
                                    !showAnswers[index]
                                        ? AppStrings.showMore
                                        : AppStrings.showLess,
                                    style: AppTheme
                                        .themeData.textTheme.labelMedium!
                                        .copyWith(color: Colors.blue,),
                                  ))
                              : Container(),
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

  Widget answersList(List<QuestionAnswer> answer, List<UserModel> user,
      bool showMore, Questions currentQuestion, int questionIndex) {
    int itemCount = answer.length > 3 ? 3 : answer.length;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: !showMore ? itemCount : answer.length,
      itemBuilder: (context, index) {
        String? separatedNickName = separateNickName(user[index].email);
        String nickName = user[index].nickName == null ||
                user[index].nickName!.trim().isNotEmpty
            ? user[index].nickName!
            : separatedNickName ?? 'M';

        String firstSymbol = nickName[0].toUpperCase();
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.only(
                right:widget.mobileRowSize ?? 20,
              ),
              child: SizedBox(
                width: 36,
                height: 36,
                child: user[index].avatar == null || user[index].avatar!.isEmpty
                    ? CircleAvatar(
                        backgroundColor: AppColors.colors[firstSymbol],
                        child: Center(
                          child: Text(
                            firstSymbol,
                            style: const TextStyle(fontSize: 25),
                          ),
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.network(
                          user[index].avatar!,
                          fit: BoxFit.fill,
                        ),
                      ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user[index].fullName!,
                        style:
                            AppTheme.themeData.textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        )),
                    Text(answer[index].answer!,
                        style:
                            AppTheme.themeData.textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
