import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class FirebaseUserRepository {
  final _firebaseAuth = FirebaseAuth.instance;

  Future<FirebaseUser> signUpWithEmailPassword({
    @required String email,
    @required String password,
  }) async {
    AuthResult result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser firebaseUser = result.user;

    return firebaseUser;
  }
}
