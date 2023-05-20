import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:micqui_admin/core/services/firestore_sevice.dart';
import 'package:micqui_admin/data/repositories/storage_repository.dart';
import 'package:micqui_admin/presentation/bloc/edit_user/edit_user_bloc.dart';
import 'package:micqui_admin/presentation/bloc/questionnarie/questionnarie_bloc.dart';
import 'package:micqui_admin/presentation/bloc/responses/responses_bloc.dart';
import 'package:micqui_admin/presentation/bloc/users/users_bloc.dart';

import '../../data/repositories/auth_repository.dart';
import '../../data/repositories/bucket_repository.dart';
import '../../data/repositories/users_repository.dart';
import '../../presentation/bloc/auth/auth_bloc.dart';
import '../../presentation/bloc/bucket/bucket_bloc.dart';
import '../../presentation/bloc/signin/sign_in_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;

  //services
  sl.registerLazySingleton(() => FirestoreService(firestore: firestore));

  //Repositories
  sl.registerLazySingleton(() => AuthRepository(auth: auth));
  sl.registerLazySingleton(
      () => BucketRepository(firestore: firestore, fr: sl()));
  sl.registerLazySingleton(() => UsersRepository(firestore: sl()));
  sl.registerLazySingleton(() => StorageRepository(storage: storage));

  //Blocs
  sl.registerLazySingleton(() => AuthBloc(authRepository: sl()));
  sl.registerFactory(() => SigninBloc(auth: sl()));
  sl.registerLazySingleton(() => QuestionnarieBloc(
        firestore: sl(),
        authBloc: sl(),
      ));
  sl.registerLazySingleton(
      () => BucketBloc(firestore: sl(), questionnarieBloc: sl()));
  sl.registerLazySingleton(() => UsersBloc(repo: sl()));
  sl.registerFactory(
      () => EditUserBloc(usersBloc: sl(), repo: sl(), storage: sl()));
  sl.registerFactory(
      () => ResponsesBloc(bucketRepository: sl(), userRepository: sl()));
}
