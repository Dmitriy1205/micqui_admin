import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micqui_admin/data/models/bucket/bucket.dart';
import 'package:micqui_admin/presentation/bloc/questionnarie/questionnarie_bloc.dart';

import '../core/services/service_locator.dart';
import '../presentation/bloc/auth/auth_bloc.dart';
import '../presentation/bloc/bucket/bucket_bloc.dart';

class Providers extends StatelessWidget {
  final Widget child;

  const Providers({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<AuthBloc>(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => sl<QuestionnarieBloc>(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => sl<BucketBloc>(),
          lazy: false,
        ),
      ],
      child: child,
    );
  }
}
