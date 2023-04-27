import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micqui_admin/presentation/bloc/auth/auth_bloc.dart';

import '../core/services/service_locator.dart';
import '../presentation/screens/auth/signin_screen/signin_screen.dart';
import '../presentation/screens/bucket_screen.dart';
import '../presentation/screens/main_screen.dart';
import '../presentation/screens/questionary_screen.dart';

final AuthBloc _bloc = sl<AuthBloc>();

final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (c, s) => const MaterialPage(child: SignInScreen()),
        redirect: (contest, state) {
          final st = _bloc.state;
          return st.maybeMap(
              authenticated: (_) => '/questionnarie',
              unauthenticated: (_) => '/',
              orElse: () => null);
        },
      ),
      ShellRoute(
        builder: (context, state, child) => Scaffold(
          body: MainScreen(
            child: child,
          ),
        ),
        routes: [
          GoRoute(
            path: '/questionnarie',
            pageBuilder: (context, state) => pageTransition<void>(
              context: context,
              state: state,
              child: const QuestionaireScreen(),
            ),
          ),
          GoRoute(
            path: '/bucket/bucketId=:bucketId',
            pageBuilder: (context, state) {
              return pageTransition<void>(
                context: context,
                state: state,
                child: BucketScreen(
                  bucketId: int.parse(state.params['bucketId']!),
                ),
              );
            },
          ),
        ],
      ),
    ],
    redirect: (contest, state) {
      final st = _bloc.state;
      return st.maybeMap(unauthenticated: (_) => '/', orElse: () => null);
    },
    refreshListenable: GoRouterRefreshStream(_bloc.stream));

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (event) => notifyListeners(),
        );
  }

  late final StreamSubscription _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

CustomTransitionPage pageTransition<T>({
  Key? key,
  String? restorationId,
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    restorationId: restorationId,
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1, 0);
      const end = Offset.zero;
      const curve = Curves.ease;
      final tween = Tween(begin: begin, end: end);
      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: curve,
      );
      return SlideTransition(
        position: tween.animate(curvedAnimation),
        child: child,
      );
    },
  );
}
