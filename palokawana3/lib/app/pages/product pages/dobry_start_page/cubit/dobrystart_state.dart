part of 'dobrystart_cubit.dart';

@immutable
class DobrystartState {
  final List<Package> packages;
  final int? selectedPackageIndex;

  const DobrystartState({
    required this.selectedPackageIndex,
    required this.packages,
  });
}
