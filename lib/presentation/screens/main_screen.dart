import 'package:flutter/material.dart';
import 'package:micqui_admin/presentation/widgets/layout/responsive_layout.dart';
import 'package:micqui_admin/presentation/widgets/layout/thin_layout.dart';
import 'package:micqui_admin/presentation/widgets/layout/wide_layout.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        thinLayout: ThinLayout(),
        wideLayout: WideLayout(),
      ),
    );
  }
}
