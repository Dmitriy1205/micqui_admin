import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'core/services/service_locator.dart' as sl;
import 'app/app.dart';
import 'app/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = GlobalObserver();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBjtIK1hVZe-qEngEphfqXU0VxzzTqblHI",
      appId: "1:48858966559:web:3a98edd8330722c3bb832a",
      messagingSenderId: "48858966559",
      projectId: "micqui",
    ),
  );
  await sl.init();
  runApp(App());
}
