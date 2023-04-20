import 'package:firebase_auth/firebase_auth.dart';

extension IsFirstSignInExtension on UserMetadata {
  bool? get isFirstSignIn => lastSignInTime == null || creationTime == null
      ? null
      : lastSignInTime!.difference(creationTime!).inSeconds < 3;
}