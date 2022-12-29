import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'reset_state.dart';

class ResetCubit extends Cubit<ResetState> {
  ResetCubit() : super(ResetInitial());
}
