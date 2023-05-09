import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'first_state.dart';

class FirstCubit extends Cubit<FirstState> {
  FirstCubit() : super(FirstState(san: 0));
  void plus() {
    emit(FirstState(san: state.san + 1));
  }
  void minus() {
    emit(FirstState(san: state.san - 1));
  }
}