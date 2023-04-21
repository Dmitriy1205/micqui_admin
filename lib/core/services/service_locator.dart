import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:micqui_admin/presentation/bloc/questionnarie/questionnarie_bloc.dart';

import '../../data/repositories/auth_repository.dart';
import '../../data/repositories/firestore_repository.dart';
import '../../presentation/bloc/auth/auth_bloc.dart';
import '../../presentation/bloc/bucket/bucket_bloc.dart';
import '../../presentation/bloc/signin/sign_in_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  //Repositories
  sl.registerLazySingleton(() => AuthRepository(auth: auth));
  sl.registerLazySingleton(() => FirestoreRepository(firestore: firestore));

  //Blocs
  sl.registerLazySingleton(() => AuthBloc(authRepository: sl()));
  sl.registerFactory(() => SigninBloc(auth: sl()));
  sl.registerFactory(() => QuestionnarieBloc(firestore: sl()));
  sl.registerLazySingleton(() => BucketBloc(firestore: sl(), questionnarieBloc: sl()));
}
