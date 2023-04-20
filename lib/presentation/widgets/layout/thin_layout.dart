import 'package:flutter/material.dart';
import 'package:micqui_admin/presentation/screens/questionary_screen.dart';
import 'package:micqui_admin/presentation/widgets/layout/app_drawer.dart';

import '../../screens/bucket_screen.dart';

class ThinLayout extends StatefulWidget {
  const ThinLayout({Key? key}) : super(key: key);

  @override
  State<ThinLayout> createState() => _ThinLayoutState();
}

class _ThinLayoutState extends State<ThinLayout> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
      ),
      drawer: AppDrawer(
        backToFirstScreen: () {},
      ),
      body:  QuestionaireScreen(),
      // const QuestionaireScreen(),
    );
  }
}
