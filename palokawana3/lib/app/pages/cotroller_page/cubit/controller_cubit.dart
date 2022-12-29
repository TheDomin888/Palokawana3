import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'controller_state.dart';

class ControllerCubit extends Cubit<ControllerState> {
  ControllerCubit() : super(ControllerInitial());
}
