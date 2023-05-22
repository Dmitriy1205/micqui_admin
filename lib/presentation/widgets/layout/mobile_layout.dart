import 'package:flutter/material.dart';
import 'package:micqui_admin/presentation/screens/users_screen.dart';

import '../../screens/questionary_screen.dart';
import 'app_drawer.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({Key? key}) : super(key: key);

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
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
          _navigatorKey.currentState!.push(MaterialPageRoute(
              builder: (context) => const QuestionaireScreen(
                    mobileCardPadding: 17,
                    mobileHeaderSize: 25,
                    mobileFontWeight: FontWeight.w600,
                    mobileBucketSize: 12,
                    mobileRowSize: 10,
                    mobileSearchIconSize: 13,
                    mobileSearchIconSpace: 35,
                  )));
        },
        goToUsers: () {
          scaffoldKey.currentState?.openEndDrawer();
          _navigatorKey.currentState!.push(MaterialPageRoute(
              builder: (context) => const UsersScreen(
                    mobileCardPadding: 17,
                    mobileHeaderSize: 25,
                    mobileFontWeight: FontWeight.w600,
                    mobileBucketSize: 12,
                    mobileRowSize: 10,
                    mobileSearchIconSize: 13,
                    mobileSearchIconSpace: 35,
                  )));
        },
      ),
      body: Navigator(
        key: _navigatorKey,
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
              builder: (context) => const QuestionaireScreen(
                    mobileCardPadding: 17,
                    mobileHeaderSize: 25,
                    mobileFontWeight: FontWeight.w600,
                    mobileBucketSize: 12,
                    mobileRowSize: 10,
                    mobileSearchIconSize: 13,
                    mobileSearchIconSpace: 35,
                  ));
        },
      ),
    );
  }
}
