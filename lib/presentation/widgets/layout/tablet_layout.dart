import 'package:flutter/material.dart';
import 'package:micqui_admin/presentation/widgets/layout/app_drawer.dart';

import '../../../app/router.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      drawer: AppDrawer(
        goToMyBuckets: () {
          scaffoldKey.currentState?.openEndDrawer();
          router.go('/buckets');
        },
        goToUsers: () {
          scaffoldKey.currentState?.openEndDrawer();
          router.go('/users');
        },
      ),
      body: widget.child,
      // const QuestionaireScreen(),
    );
  }
}
