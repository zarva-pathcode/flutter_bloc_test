import 'package:flutter_bloc_test/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Counter Cubit", () {
    late CounterCubit counterCubit;

    setUp(() {
      counterCubit = CounterCubit();
    });

    test("Initial State 0", () {
      expect(counterCubit.state.value, 0);
    });
  });
}
