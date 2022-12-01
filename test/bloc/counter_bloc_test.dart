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
  });
}
