part of 'root_cubit.dart';

@immutable
class RootState {
  final User? user;
  final String currentUser;

  const RootState({
    required this.user,
    required this.currentUser,
  });
}
