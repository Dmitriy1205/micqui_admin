import 'package:firebase_auth/firebase_auth.dart';

import '../../core/constants/exceptions.dart';

class AuthRepository {
  final FirebaseAuth auth;

  AuthRepository({required this.auth});

  Stream<User?> get authStateChange => auth.authStateChanges();

  User? currentUser() {
    return auth.currentUser;
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        throw BadRequestException(
            message: 'EMAIL OR PASSWORD IS WRONG', attribute: 'password');
      }
    }
  }

  Future<void> logout() async {
    await auth.signOut();
  }
}
