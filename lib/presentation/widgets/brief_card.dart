import 'package:flutter/material.dart';

import '../../core/constants/strings.dart';
import '../../core/themes/theme.dart';

class BriefCard extends StatelessWidget {
  final int quantity;
  final int joined;
  const BriefCard({
    super.key, required this.quantity, required this.joined,
  });

  @override
  Widget build(BuildContext context) {

    String convertValue() {
      var conversion = (quantity/joined) * 100 > 100 ? 0 : (quantity/joined) * 100;
      if (conversion.isNaN) {
        return '0';
      } else {
        return conversion.toString();
      }
    }
    return SizedBox(
      width: 240,
      height: 138,
      child: Card(
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.brief,
                  style: AppTheme.themeData.textTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  )),
              const SizedBox(
                height: 8,
              ),
              RichText(
                text: TextSpan(
                  style: AppTheme.themeData.textTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  children: [
                    const TextSpan(text: '${AppStrings.joinedLink} - '),
                    TextSpan(
                      text: '$joined',
                      style: AppTheme.themeData.textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: RichText(
                  text: TextSpan(
                    style: AppTheme.themeData.textTheme.labelMedium!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    children: [
                      const TextSpan(
                          text: '${AppStrings.finishedQuestionnaire} - '),
                      TextSpan(
                        text: '$quantity',
                        style:
                            AppTheme.themeData.textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  style: AppTheme.themeData.textTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  children: [
                    const TextSpan(text: '${AppStrings.conversion} - '),
                    TextSpan(
                      text: '${convertValue()}%',
                      style: AppTheme.themeData.textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
