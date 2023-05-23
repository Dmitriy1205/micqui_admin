import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui_admin/core/extensions/validation.dart';
import 'package:micqui_admin/data/models/user/user_model.dart';
import 'package:micqui_admin/presentation/bloc/edit_user/edit_user_bloc.dart';
import 'package:micqui_admin/presentation/widgets/app_elevated_button.dart';
import '../../app/router.dart';
import '../../core/constants/colors.dart';
import '../../core/constants/strings.dart';
import '../../core/services/service_locator.dart';
import '../../core/themes/theme.dart';
import '../widgets/image_picker.dart';

class EditUserScreen extends StatefulWidget {
  final UserModel user;
  final double? mobileCardPadding;
  final double? mobileHeaderSize;
  final FontWeight? mobileFontWeight;
  final double? mobileBucketSize;
  final double? mobileRowSize;
  final double? mobileSearchIconSize;
  final double? mobileSearchIconSpace;

  const EditUserScreen({
    Key? key,
    required this.user,
    this.mobileCardPadding,
    this.mobileHeaderSize,
    this.mobileBucketSize,
    this.mobileRowSize,
    this.mobileSearchIconSize,
    this.mobileSearchIconSpace,
    this.mobileFontWeight,
  }) : super(key: key);

  @override
  State<EditUserScreen> createState() => _EditUserScreenState();
}

class _EditUserScreenState extends State<EditUserScreen> {
  final EditUserBloc _bloc = sl<EditUserBloc>();
  final _formKey = GlobalKey<FormState>();
  final _focusNode = FocusNode();
  final _nickNameController = TextEditingController();
  final _nameController = TextEditingController();

  final _companyNameController = TextEditingController();
  final _searchController = TextEditingController();

  List<FocusNode> questionNameFocusNodes = [];
  late String? selectedRole;

  @override
  void initState() {
    _nickNameController.text = widget.user.nickName!;
    _nameController.text = widget.user.fullName!;
    _companyNameController.text = widget.user.companyName ?? '';
    selectedRole = widget.user.role ?? 'Employee';
    super.initState();
  }

  @override
  void dispose() {
    _nickNameController.dispose();
    _nameController.dispose();
    _companyNameController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<EditUserBloc, EditUserState>(
        bloc: _bloc,
        listener: (context, state) {
          state.maybeMap(
              success: (_) =>widget.mobileCardPadding == null
                  ? router.pop() : Navigator.pop(context),
              error: (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: AppColors.accent,
                    duration: const Duration(seconds: 5),
                    content: Text(
                      e.error,
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
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
                padding: EdgeInsets.all(widget.mobileCardPadding ?? 29),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                        Text(
                          AppStrings.editUser,
                          style: AppTheme.themeData.textTheme.headlineLarge!
                              .copyWith(
                                  color: AppColors.text,
                                  fontSize: widget.mobileHeaderSize ?? 38,
                                  fontWeight: widget.mobileFontWeight ??
                                      FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 119,
                      children: [
                        SizedBox(
                          width: 185,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 128,
                                width: 128,
                                child: ProfileImagePicker(
                                  userImage: (file) {
                                    _bloc.add(
                                        EditUserEvent.getImage(image: file));
                                  },
                                  avatar: const SizedBox(),
                                  user: widget.user,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: EditableText(
                                        textAlign: TextAlign.center,
                                        controller: _nickNameController,
                                        style: const TextStyle(
                                            color: AppColors.text,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 22),
                                        cursorColor: AppColors.primary,
                                        backgroundCursorColor: Colors.grey,
                                        selectionControls:
                                            MaterialTextSelectionControls(),
                                        keyboardType: TextInputType.text,
                                        maxLines: 1,
                                        focusNode: _focusNode,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const FaIcon(
                                      FontAwesomeIcons.pen,
                                      color: AppColors.text,
                                      size: 19,
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                widget.user.email ?? 'Empty',
                                style: const TextStyle(
                                    color: AppColors.text,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        // const SizedBox(
                        //   width: 119,
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: SizedBox(
                            width: 276,
                            // height: 276,
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(22),
                                    child: Form(
                                      key: _formKey,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            AppStrings.additionalInformation,
                                            style: TextStyle(
                                                color: AppColors.text,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 15),
                                          ),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Text(
                                              AppStrings.companyName,
                                              style: TextStyle(
                                                  color: AppColors.text,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          TextFormField(
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            controller: _companyNameController,
                                            style: const TextStyle(
                                                color: AppColors.text,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12),
                                            decoration: const InputDecoration(
                                              isDense: true,
                                              prefix: SizedBox(
                                                width: 6,
                                              ),
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                vertical: 10,
                                                horizontal: 5,
                                              ),
                                            ),
                                            validator:
                                                context.validateFieldNotEmpty,
                                          ),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Text(
                                              AppStrings.role,
                                              style: TextStyle(
                                                  color: AppColors.text,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          DropdownButtonFormField<String>(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            style: const TextStyle(
                                                color: AppColors.text,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12),
                                            value: selectedRole,
                                            iconSize: 15,
                                            decoration: const InputDecoration(
                                                isDense: true,
                                                prefix: SizedBox(
                                                  width: 6,
                                                ),
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 5,
                                                        vertical: 7),
                                                border: OutlineInputBorder()),
                                            icon: const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 8.0),
                                              child: FaIcon(
                                                  FontAwesomeIcons.chevronDown),
                                            ),
                                            items: AppStrings.roles
                                                .map(
                                                  (role) =>
                                                      DropdownMenuItem<String>(
                                                    value: role,
                                                    child: Text(
                                                      role,
                                                      style: const TextStyle(
                                                          color: AppColors.text,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 12),
                                                    ),
                                                  ),
                                                )
                                                .toList(),
                                            onChanged: (role) {
                                              selectedRole = role;
                                            },
                                            validator:
                                                context.validateFieldNotEmpty,
                                          ),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 5.0),
                                            child: Text(
                                              AppStrings.fullName,
                                              style: TextStyle(
                                                  color: AppColors.text,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          TextFormField(
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            controller: _nameController,
                                            style: const TextStyle(
                                                color: AppColors.text,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12),
                                            decoration: const InputDecoration(
                                              isDense: true,
                                              prefix: SizedBox(
                                                width: 6,
                                              ),
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                vertical: 10,
                                                horizontal: 5,
                                              ),
                                            ),
                                            validator:
                                                context.validateFieldNotEmpty,
                                          ),
                                          const SizedBox(
                                            height: 16,
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
                      ],
                    ),
                    SizedBox(
                      width: 596,
                      height: 51,
                      child: AppElevatedButton(
                          color: AppColors.signalGreen,
                          text: AppStrings.saveEdits,
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            }
                            _formKey.currentState!.save();

                            _bloc.add(
                              EditUserEvent.updateFields(
                                file: state.image,
                                image: widget.user.avatar ?? '',
                                fullName: _nameController.text,
                                role: selectedRole!,
                                companyName: _companyNameController.text,
                                nickName: _nickNameController.text,
                                userId: widget.user.id!,
                              ),
                            );
                          }),
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
}
