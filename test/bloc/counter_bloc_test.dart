import 'package:flutter_bloc_test/bloc/counter_bloc.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group("Testing Counter Bloc", () {
    late CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc();
    });

    test("Initial State is 0", () {
      expect(counterBloc.state.value, 0);
    });

    blocTest<CounterBloc, CounterState>(
      "Emit [1] when Increment Pressed is added",
      build: () => counterBloc,
      act: (bloc) => bloc.add(Increment()),
      expect: () => [CounterState(1)],
    );
    blocTest<CounterBloc, CounterState>(
      "Emit [-1] when Decrement Pressed is added",
      build: () => counterBloc,
      act: (bloc) => bloc.add(Decrement()),
      expect: () => [CounterState(-1)],
    );
  });
}
