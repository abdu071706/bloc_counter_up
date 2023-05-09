import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'second_state.dart';

class SecondCubit extends Cubit<SecondState> {
  SecondCubit() : super(SecondState());
}
