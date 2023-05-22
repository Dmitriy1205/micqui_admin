import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../core/themes/theme.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;

  const AppElevatedButton({
    required this.text,
    required this.onPressed,
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: color ?? AppColors.second,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(

            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                text,
                style: AppTheme.themeData.textTheme.labelLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
