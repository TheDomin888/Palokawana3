part of 'login_cubit.dart';

class LoginState {
  LoginState({this.key, this.errorMessage, this.success = false});

  final Key? key;
  final bool success;
  final String? errorMessage;
}
