import 'package:flutter/material.dart';
import 'package:micqui_admin/app/providers.dart';
import 'package:micqui_admin/app/router.dart';
import 'package:micqui_admin/core/themes/theme.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Providers(
      child: MaterialApp.router(
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        backButtonDispatcher: RootBackButtonDispatcher(),
        theme: AppTheme.themeData,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
