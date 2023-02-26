part of 'dobrystart_cubit.dart';

@immutable
class DobrystartState {
  final List<Package> packages;
  final int? selectedPackageIndex;
  final List<Product> products;
  final int? selectedProductIndex;
  final String price;

  const DobrystartState({
    required this.selectedPackageIndex,
    required this.packages,
    required this.products,
    required this.selectedProductIndex,
    required this.price,
  });
}
