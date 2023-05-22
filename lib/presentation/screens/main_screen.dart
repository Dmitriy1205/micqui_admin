import 'package:flutter/material.dart';
import 'package:micqui_admin/presentation/widgets/layout/mobile_layout.dart';
import 'package:micqui_admin/presentation/widgets/layout/responsive_layout.dart';
import 'package:micqui_admin/presentation/widgets/layout/tablet_layout.dart';
import 'package:micqui_admin/presentation/widgets/layout/desktop_layout.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future(() => false),
      child: Scaffold(
        body: ResponsiveLayout(
            mobileLayout: MobileLayout(),
            tabletLayout: TabletLayout(
              child: child!,
            ),
            desktopLayout: DesktopLayout(
              child: child!,
            )),
      ),
    );
  }
}
