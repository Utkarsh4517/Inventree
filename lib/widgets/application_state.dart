import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

enum ApplicationLoginState { loggedOut, loggedIn }

class ApplicationState extends ChangeNotifier {
  User? user;
  ApplicationLoginState loginState = ApplicationLoginState.loggedOut;

  ApplicationState() {
    init();
  }

  Future<void> init() async {
    FirebaseAuth.instance.userChanges().listen((userFir) {
      if (userFir != null) {
        loginState = ApplicationLoginState.loggedOut;
        user = userFir;
      } else {
        loginState = ApplicationLoginState.loggedIn;
      }

      notifyListeners();
    });
  }

  Future<void> signIn(
    String email,
    String password,
    void Function(FirebaseAuthException e) errorCallBack,
  ) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      errorCallBack(e);
    }
  }

  Future<void> signUp(
    String email,
    String password,
    void Function(FirebaseAuthException e) errorCallBack,
  ) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // stripe user create
    } on FirebaseAuthException catch (e) {
      errorCallBack(e);
    }
  }

  void signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
