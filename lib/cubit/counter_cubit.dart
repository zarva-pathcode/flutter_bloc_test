import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(CounterCubitState(0));

  void increment() {
    emit(CounterCubitState(state.value + 1));
  }

  void decrement() {
    emit(CounterCubitState(state.value - 1));
  }
}
