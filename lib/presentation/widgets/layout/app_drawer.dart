import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui_admin/core/constants/colors.dart';
import 'package:micqui_admin/core/themes/theme.dart';
import 'package:micqui_admin/presentation/bloc/auth/auth_bloc.dart';

import '../../../core/constants/strings.dart';

class AppDrawer extends StatelessWidget {
  final Function() backToFirstScreen;
  const AppDrawer({Key? key, required this.backToFirstScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.text,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      elevation: 0,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
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
                ListTile(
                  onTap: backToFirstScreen,
                  leading: const FaIcon(
                    FontAwesomeIcons.solidCircleCheck,
                    color: AppColors.background,
                  ),
                  title: Text(
                    AppStrings.questionnaires,
                    style: AppTheme.themeData.textTheme.titleLarge,
                  ),
                ),
                ListTile(
                  onTap: () {
                    showAlertDialog(context);
                  },
                  leading: const FaIcon(
                    FontAwesomeIcons.leftLong,
                    color: AppColors.background,
                  ),
                  title: Text(
                    AppStrings.logout,
                    style: AppTheme.themeData.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
            Positioned(
              top: -70,
              left: -10,
              child: Transform.rotate(
                alignment: Alignment.center,
                angle: pi / 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: 97,
                  height: 158,
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 21,
                child: Text(
                  AppStrings.version,
                  style: AppTheme.themeData.textTheme.titleLarge!
                      .copyWith(color: AppColors.lightGrey),
                ))
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
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
      AppStrings.logout,
      style: TextStyle(color: AppColors.text),
    ),
    onPressed: () {
      context.read<AuthBloc>().add(const AuthEvent.logout());
      Navigator.pop(context);
    },
  );

  AlertDialog alert = AlertDialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    title: Text(AppStrings.warning,
        style: AppTheme.themeData.textTheme.titleSmall),
    content: Text(AppStrings.areYouSure,
        style: AppTheme.themeData.textTheme.bodySmall),
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
