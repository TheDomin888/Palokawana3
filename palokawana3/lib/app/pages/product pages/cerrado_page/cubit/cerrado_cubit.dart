import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cerrado_state.dart';

class CerradoCubit extends Cubit<CerradoState> {
  CerradoCubit() : super(CerradoInitial());
}
