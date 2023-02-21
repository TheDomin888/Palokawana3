part of 'dobrystart_cubit.dart';

@immutable
class DobrystartState {
  final List<Package> packages;
  final int? selectedPackageIndex;
  final List<Product> products;
  final int? selectedProductIndex;

  const DobrystartState({
    required this.selectedPackageIndex,
    required this.packages,
    required this.products,
    required this.selectedProductIndex,
  });
}
