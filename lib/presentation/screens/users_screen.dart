import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui_admin/core/constants/strings.dart';
import 'package:micqui_admin/core/themes/theme.dart';
import 'package:micqui_admin/presentation/bloc/questionnarie/questionnarie_bloc.dart';
import 'package:micqui_admin/presentation/bloc/users/users_bloc.dart';
import 'package:micqui_admin/presentation/screens/bucket_screen.dart';
import 'package:micqui_admin/presentation/widgets/app_checkbox.dart';

import '../../app/router.dart';
import '../../core/constants/colors.dart';
import '../../core/services/service_locator.dart';
import '../../core/utils/utils.dart';
import '../../data/models/bucket/bucket.dart';
import '../widgets/search_field.dart';
import '../widgets/toast.dart';
import 'edit_user_screen.dart';

class UsersScreen extends StatefulWidget {
  final double? mobileCardPadding;
  final double? mobileHeaderSize;
  final FontWeight? mobileFontWeight;
  final double? mobileBucketSize;
  final double? mobileRowSize;
  final double? mobileSearchIconSize;
  final double? mobileSearchIconSpace;

  const UsersScreen({
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
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  final UsersBloc _bloc = sl<UsersBloc>();
  final _searchController = TextEditingController();

  String value = 'All';

  @override
  void initState() {
    _bloc.add(const UsersEvent.fetchUsers());
    super.initState();
  }

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
        body: BlocConsumer<UsersBloc, UsersState>(
          bloc: _bloc,
          listener: (context, state) {},
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
                        AppStrings.users,
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
                                        "${AppStrings.users} (${state.users?.length ?? 0})",
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
                                              _bloc.add(UsersEvent.searchByName(
                                                  name: name, role: value));
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
                                      const Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: SizedBox(),
                                      )
                                    ],
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey.shade300,
                                  thickness: 1,
                                ),
                                state.users == null
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
          _bloc.add(
            UsersEvent.sortByCategory(category: v),
          );
        },
      ),
    );
  }

  Expanded bucketList(UsersState state) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: state.users!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                String? separatedNickName =
                    separateNickName(state.users?[index].email);
                String nickName = state.users?[index].nickName == null ||
                        state.users![index].nickName!.trim().isNotEmpty
                    ? state.users![index].nickName!
                    : separatedNickName ?? 'M';

                String firstSymbol = nickName[0].toUpperCase();

                return Container(
                  key: ObjectKey(index),
                  // decoration: BoxDecoration(
                  //   border: Border(
                  //     bottom: BorderSide(
                  //       color: Colors.grey.shade300,
                  //     ),
                  //   ),
                  // ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        bottom: 19, top: 14, left: 23, right: 23),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 20,
                          ),
                          child: SizedBox(
                            width: 36,
                            height: 36,
                            child: state.users?[index].avatar == null ||
                                    state.users![index].avatar!.isEmpty
                                ? CircleAvatar(
                                    backgroundColor:
                                        AppColors.colors[firstSymbol],
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
                                      state.users![index].avatar!,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              state.users![index].nickName!.isNotEmpty
                                  ? Text(
                                      '${state.users![index].fullName!} (${state.users![index].nickName!})',
                                      style: AppTheme
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(
                                        fontWeight: FontWeight.w500,
                                      ))
                                  : Text(state.users![index].fullName!,
                                      style: AppTheme
                                          .themeData.textTheme.labelMedium!
                                          .copyWith(
                                        fontWeight: FontWeight.w500,
                                      )),
                              RichText(
                                text: TextSpan(
                                  style: AppTheme
                                      .themeData.textTheme.labelSmall!
                                      .copyWith(color: AppColors.text),
                                  children: [
                                    TextSpan(
                                        text:
                                            '${state.users![index].role ?? ''} from '),
                                    TextSpan(
                                      text:
                                          state.users![index].companyName ?? '',
                                      style: AppTheme
                                          .themeData.textTheme.labelSmall!
                                          .copyWith(
                                              color: AppColors.text,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Tooltip(
                              message: AppStrings.edit,
                              child: IconButton(
                                  constraints: const BoxConstraints(),
                                  padding: const EdgeInsets.all(4),
                                  onPressed: () {
                                    final usersModel =
                                        jsonEncode(state.users![index]);
                                    widget.mobileSearchIconSpace == null
                                        ? router.push('/edit_user/$usersModel')
                                        :
                                    Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  EditUserScreen(
                                                user: state.users![index],
                                                mobileSearchIconSpace: widget
                                                    .mobileSearchIconSpace,
                                                mobileSearchIconSize:
                                                    widget.mobileSearchIconSize,
                                                mobileRowSize:
                                                    widget.mobileRowSize,
                                                mobileBucketSize:
                                                    widget.mobileBucketSize,
                                                mobileHeaderSize:
                                                    widget.mobileHeaderSize,
                                                mobileCardPadding:
                                                    widget.mobileCardPadding,
                                                mobileFontWeight:
                                                    widget.mobileFontWeight,
                                              ),
                                            ),
                                          );
                                  },
                                  icon: const Center(
                                    child: FaIcon(
                                      FontAwesomeIcons.solidPenToSquare,
                                      color: AppColors.text,
                                      size: 20,
                                    ),
                                  )),
                            ),
                            const SizedBox(
                              width: 23,
                            ),
                            Tooltip(
                              message: AppStrings.deleteUser,
                              child: IconButton(
                                  constraints: const BoxConstraints(),
                                  padding: const EdgeInsets.all(4),
                                  onPressed: () {
                                    deleteUserDialog(context,
                                        text: state.users![index].fullName!,
                                        userId: state.users![index].id!,
                                        bloc: _bloc);
                                  },
                                  icon: const Center(
                                    child: FaIcon(
                                      FontAwesomeIcons.solidSquareMinus,
                                      color: AppColors.signalRed,
                                      size: 20,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ],
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

deleteUserDialog(
  BuildContext context, {
  required String text,
  required String userId,
  required UsersBloc bloc,
}) {
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
      style: TextStyle(color: AppColors.signalRed),
    ),
    onPressed: () {
      bloc.add(UsersEvent.deleteUser(userId: userId));
      Navigator.pop(context);
    },
  );

  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    title: Text(AppStrings.warning,
        style: AppTheme.themeData.textTheme.titleSmall),
    content: RichText(
      text: TextSpan(
        style: AppTheme.themeData.textTheme.bodySmall,
        children: [
          const TextSpan(text: 'Are you sure you want to delete\n\n'),
          TextSpan(
            text: '$text?',
            style: AppTheme.themeData.textTheme.bodySmall!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    ),
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
