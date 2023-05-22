import 'package:flutter/material.dart';
import 'package:micqui_admin/presentation/widgets/layout/app_drawer.dart';

import '../../../app/router.dart';

class DesktopLayout extends StatefulWidget {
  final Widget child;

  const DesktopLayout({Key? key, required this.child}) : super(key: key);

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppDrawer(
            goToMyBuckets: () {
              router.go('/buckets');
            },
            goToUsers: () {router.go('/users');

            },
          ),
          Expanded(
            child: widget.child,
            // QuestionaireScreen(),
          ),
        ],
      ),
    );
  }
}
