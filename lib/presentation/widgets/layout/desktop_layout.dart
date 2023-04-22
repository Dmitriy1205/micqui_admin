import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micqui_admin/presentation/bloc/questionnarie/questionnarie_bloc.dart';
import 'package:micqui_admin/presentation/widgets/layout/app_drawer.dart';

import '../../screens/questionary_screen.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({Key? key}) : super(key: key);

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
            backToFirstScreen: () {
              context
                  .read<QuestionnarieBloc>()
                  .add(const QuestionnarieEvent.init());
            },
          ),
          const Expanded(
            child: QuestionaireScreen(),
          ),
        ],
      ),
    );
  }
}
