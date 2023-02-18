import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:palokawana3/app/pages/product%20pages/dobry_start_page/dobry_start_page.dart';

part 'dobrystart_state.dart';

class DobrystartCubit extends Cubit<DobrystartState> {
  DobrystartCubit()
      : super(DobrystartState(
          packages: [
            Package(weight: '250g', price: 33),
            Package(weight: '500g', price: 66),
            Package(weight: '1kg', price: 120),
          ],
          selectedPackageIndex: null,
        ));

  Future<void> selectNewPackageIndex(int? newValue) async {
    emit(
      DobrystartState(
        selectedPackageIndex: newValue,
        packages: state.packages,
      ),
    );
  }
}
