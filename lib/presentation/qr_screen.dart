import 'package:flutter/material.dart';
import 'package:micqui_admin/core/constants/colors.dart';
import 'package:micqui_admin/core/constants/strings.dart';
import 'package:micqui_admin/core/themes/theme.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrScreen extends StatelessWidget {
  final String code;

  const QrScreen({Key? key, required this.code}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).size.width > 600
          ? _buildDesktopLayout(context)
          : _buildMobileLayout(context),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 180,
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          color: AppColors.second,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.scanQr,
                  maxLines: 1,
                  style: AppTheme.themeData.textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20),
                QrImage(
                  data: code,
                  size: 150,
                  backgroundColor: AppColors.second,
                  version: QrVersions.auto,
                ),
                const SizedBox(height: 20),
                Text(
                  code.toUpperCase(),
                  style: AppTheme.themeData.textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: constraints.maxWidth * 0.1,
              vertical: constraints.maxHeight * 0.15,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              color: AppColors.second,
              child: Padding(
                padding: EdgeInsets.all(constraints.maxHeight * 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.scanQr,
                      maxLines: 1,
                      style: AppTheme.themeData.textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: constraints.maxHeight * 0.035,
                      ),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.05),
                    QrImage(
                      data: code,
                      size: constraints.maxHeight * 0.3,
                      backgroundColor: AppColors.second,
                      version: QrVersions.auto,
                    ),
                    SizedBox(height: constraints.maxHeight * 0.05),
                    Text(
                      code.toUpperCase(),
                      style: AppTheme.themeData.textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: constraints.maxHeight * 0.06,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

// class QrScreen extends StatelessWidget {
//   final String code;
//
//   const QrScreen({Key? key, required this.code}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//           return Center(
//             child: Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: constraints.maxWidth * 0.1,
//                 vertical: constraints.maxHeight * 0.1,
//               ),
//               child: Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(40),
//                 ),
//                 color: AppColors.second,
//                 child: Padding(
//                   padding: EdgeInsets.all(constraints.maxHeight * 0.05),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         AppStrings.scanQr,
//                         maxLines: 1,
//                         style: AppTheme.themeData.textTheme.bodySmall!.copyWith(
//                           fontWeight: FontWeight.w600,
//                           fontSize: constraints.maxHeight * 0.035,
//                         ),
//                       ),
//                       SizedBox(height: constraints.maxHeight * 0.05),
//                       QrImage(
//                         data: code,
//                         size: constraints.maxHeight * 0.3,
//                         backgroundColor: AppColors.second,
//                         version: QrVersions.auto,
//                       ),
//                       SizedBox(height: constraints.maxHeight * 0.05),
//                       Text(
//                         code.toUpperCase(),
//                         style: AppTheme.themeData.textTheme.bodySmall!.copyWith(
//                           fontWeight: FontWeight.w700,
//                           fontSize: constraints.maxHeight * 0.06,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
