import 'package:flutter/material.dart';
import 'package:micqui_admin/presentation/screens/questionary_screen.dart';
import 'package:micqui_admin/presentation/widgets/layout/app_drawer.dart';


class TabletLayout extends StatefulWidget {
  const TabletLayout({Key? key}) : super(key: key);

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
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
      body: const QuestionaireScreen(),
      // const QuestionaireScreen(),
    );
  }
}
