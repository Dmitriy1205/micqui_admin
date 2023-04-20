import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micqui_admin/app/providers.dart';
import 'package:micqui_admin/core/themes/theme.dart';
import 'package:micqui_admin/presentation/screens/auth/signin_screen/signin_screen.dart';

import '../presentation/bloc/auth/auth_bloc.dart';
import '../presentation/screens/main_screen.dart';

class App extends StatelessWidget {
  App({super.key});

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Providers(
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            authenticated: (_)=>navigatorKey.currentState?.pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => const MainScreen(),
                ),
                    (route) => false),
            unauthenticated: (_) =>
                navigatorKey.currentState?.pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const SignInScreen(),
                    ),
                    (route) => false),
            orElse: () {},
          );
        },
        builder: (context, state) {
          return MaterialApp(
            theme: AppTheme.themeData,
            debugShowCheckedModeBanner: false,
            home: state.maybeMap(
              authenticated: (_) => const MainScreen(),
              orElse: () => SignInScreen(),
            ),
          );
        },
      ),
    );
  }
}
