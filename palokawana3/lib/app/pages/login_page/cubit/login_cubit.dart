import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());

  Future<void> logIn(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim(),
      );
      emit(
        LoginState(
          success: true,
          errorMessage: null,
        ),
      );
    } on FirebaseAuthException catch (errorMessage) {
      if (errorMessage.code == 'user-not-found') {
        emit(LoginState(errorMessage: 'Nie znaleziono usera'));
        // wrongEmailMessage(context);
      } else if (errorMessage.code == 'wrong-password') {
        emit(LoginState(
          errorMessage: 'Złe hasło',
          key: UniqueKey(),
        ));
        // wrongPasswordMessage(context);
      }
    }
  }

  Future<void> passwordReset(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: email.trim(),
      );
      emit(
        LoginState(
          success: true,
          errorMessage: null,
        ),
      );
    } on FirebaseAuthException catch (errorMessage) {
      if (errorMessage.code == 'invalid-email') {
        emit(LoginState(errorMessage: 'Nie znaleziono usera'));
      }
    }
  }

  Future<void> signUp(
      String email, String password, String passwordConfirmed) async {
    if (password.trim() != passwordConfirmed.trim()) {
      emit(LoginState(errorMessage: 'Hasła róznią się od siebie'));
    } else {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.trim(),
          password: password.trim(),
        );
        emit(
          LoginState(
            errorMessage: null,
          ),
        );
      } on FirebaseAuthException catch (error) {
        emit(LoginState(errorMessage: error.toString()));
      }
    }
  }
}
