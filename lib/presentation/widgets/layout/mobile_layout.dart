import 'package:flutter/material.dart';

import '../../screens/questionary_screen.dart';
import 'app_drawer.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      drawer: AppDrawer(
      ),
      body: const QuestionaireScreen(
        mobileCardPadding: 17,
        mobileHeaderSize: 25,
        mobileFontWeight: FontWeight.w600,
        mobileBucketSize: 12,
        mobileRowSize: 10,
        mobileSearchIconSize: 13,
        mobileSearchIconSpace: 35,
      ),
    );
  }
}
