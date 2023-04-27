import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui_admin/core/constants/strings.dart';
import 'package:micqui_admin/core/extensions/validation.dart';
import 'package:micqui_admin/presentation/widgets/loading_indicator.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../core/themes/theme.dart';
import '../../../bloc/signin/sign_in_bloc.dart';
import '../../../widgets/app_elevated_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final SigninBloc _bloc = sl<SigninBloc>();
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.text,
      body: BlocConsumer<SigninBloc, SignInState>(
        bloc: _bloc,
        listener: (context, state) {
          state.maybeMap(
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
            loading: (_) => const LoadingIndicator(),
            orElse: () => SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.asset(AppStrings.logoImage),
                  ),
                  const Divider(
                    color: AppColors.lightGrey,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 158,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            AppStrings.adminPanel,
                            style: AppTheme.themeData.textTheme.headlineLarge,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 42),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: _emailController,
                                  style: AppTheme
                                      .themeData.textTheme.labelSmall!
                                      .copyWith(fontSize: 14),
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    hintText: AppStrings.useName,
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.only(
                                        left: 12,
                                        bottom: 10,
                                        top: 13,
                                      ),
                                      child: FaIcon(
                                        FontAwesomeIcons.solidUser,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  validator: context.validateEmailAddress,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                TextFormField(
                                  controller: _passwordController,
                                  obscureText: true,
                                  style: AppTheme
                                      .themeData.textTheme.labelSmall!
                                      .copyWith(fontSize: 14),
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    hintText: AppStrings.password,
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.only(
                                          left: 12, bottom: 10, top: 12),
                                      child: FaIcon(
                                        FontAwesomeIcons.lock,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return ' Password cant be empty';
                                    }
                                    return null;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        AppElevatedButton(
                            text: AppStrings.signIn,
                            onPressed: () {
                              if (!_formKey.currentState!.validate()) {
                                return;
                              }
                              _formKey.currentState!.save();
                              _bloc.add(
                                SignInEvent.signInWithEmailAndPassword(
                                  email: _emailController.text,
                                  password: _passwordController.text,
                                ),
                              );
                            }),
                      ],
                    ),
                  ),
                  SizedBox(height: 250,),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
