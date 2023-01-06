part of 'root_cubit.dart';

@immutable
class RootState {
  final User? user;
  final bool isLoading;

  const RootState({
    required this.user,
    required this.isLoading,
  });
}
