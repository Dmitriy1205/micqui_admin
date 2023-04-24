import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../presentation/screens/auth/signin_screen/signin_screen.dart';
import '../presentation/screens/bucket_screen.dart';
import '../presentation/screens/main_screen.dart';
import '../presentation/screens/questionary_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      pageBuilder: (c, s) => const MaterialPage(child: SignInScreen()),
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
);

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
