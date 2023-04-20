import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget thinLayout;
  final Widget wideLayout;

  const ResponsiveLayout({
    super.key,
    required this.thinLayout,
    required this.wideLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return thinLayout;
        } else {
          return wideLayout;
        }
      },
    );
  }
}
