import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micqui_admin/app/providers.dart';
import 'package:micqui_admin/app/router.dart';
import 'package:micqui_admin/core/themes/theme.dart';

import '../presentation/bloc/auth/auth_bloc.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Providers(
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            authenticated: (_) => router.go('/questionnarie'),
            unauthenticated: (_) => router.go('/'),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return MaterialApp.router(
            routeInformationProvider: router.routeInformationProvider,
            routeInformationParser: router.routeInformationParser,
            routerDelegate: router.routerDelegate,
            backButtonDispatcher: RootBackButtonDispatcher(),
            theme: AppTheme.themeData,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
