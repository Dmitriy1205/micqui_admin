import 'package:flutter/material.dart';
import 'package:micqui_admin/presentation/widgets/layout/mobile_layout.dart';
import 'package:micqui_admin/presentation/widgets/layout/responsive_layout.dart';
import 'package:micqui_admin/presentation/widgets/layout/tablet_layout.dart';
import 'package:micqui_admin/presentation/widgets/layout/desktop_layout.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileLayout: MobileLayout(),
        tabletLayout: TabletLayout(),
        desktopLayout: DesktopLayout(),
      ),
    );
  }
}
