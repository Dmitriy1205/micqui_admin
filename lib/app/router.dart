import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micqui_admin/data/models/user/user_model.dart';
import 'package:micqui_admin/presentation/bloc/auth/auth_bloc.dart';
import 'package:micqui_admin/presentation/screens/edit_user_screen.dart';
import 'package:micqui_admin/presentation/screens/responses_screen.dart';

import '../core/services/service_locator.dart';
import '../presentation/qr_screen.dart';
import '../presentation/screens/auth/signin_screen/signin_screen.dart';
import '../presentation/screens/bucket_screen.dart';
import '../presentation/screens/main_screen.dart';
import '../presentation/screens/questionary_screen.dart';
import '../presentation/screens/users_screen.dart';

final AuthBloc _bloc = sl<AuthBloc>();

final GoRouter router = GoRouter(
    // initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (c, s) => const MaterialPage(child: SignInScreen()),
        redirect: (contest, state) {
          final st = _bloc.state;

          return st.maybeMap(
              authenticated: (_) => '/buckets',
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
            path: '/buckets',
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
          GoRoute(
            path: '/users',
            pageBuilder: (context, state) => pageTransition<void>(
              context: context,
              state: state,
              child: const UsersScreen(),
            ),
          ),
          GoRoute(
            path: '/edit_user/:userModel',
            pageBuilder: (context, state) {
              final userModelJson = state.params['userModel']!;
              final userModel = UserModel.fromJson(jsonDecode(userModelJson));
              return pageTransition<void>(
                context: context,
                state: state,
                child: EditUserScreen(
                  user: userModel,
                ),
              );
            },
          ),
          GoRoute(
            path: '/responses/:bucketId/:bucketName',
            pageBuilder: (context, state) {
              return pageTransition<void>(
                context: context,
                state: state,
                child: ResponsesScreen(
                  bucketId: state.params['bucketId']!, bucketName: state.params['bucketName']!,
                ),
              );
            },
          ),
        ],
      ),
      GoRoute(
        path: '/qrcode/:code',
        name: 'qrcode',
        builder: (context, state) {
          return QrScreen(
            code: state.params['code']!,
          );
        },
      ),
    ],
    redirect: (context, state) {
      final st = _bloc.state;
      if (state.subloc.contains('/qrcode/')) {
        return state.subloc;
      }
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
