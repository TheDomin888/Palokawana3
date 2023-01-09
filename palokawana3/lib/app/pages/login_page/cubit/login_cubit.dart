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
          errorMessage: 'Złe hasło ziomek',
          key: UniqueKey(),
        ));
        // wrongPasswordMessage(context);
      }
    }
  }
}
