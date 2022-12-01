part of 'counter_cubit.dart';

class CounterCubitState extends Equatable {
  int value = 0;

  CounterCubitState(this.value);

  @override
  List<Object> get props => [value];
}
