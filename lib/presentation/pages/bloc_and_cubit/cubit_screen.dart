import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/cubit/counter_cubit.dart';

class CubitPage extends StatelessWidget {
  const CubitPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterCubitState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${state.value}',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag: Text('First'),
                  onPressed: () {
                    context.read<CounterCubit>().decrement();
                  },
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  heroTag: Text('Second'),
                  onPressed: () {
                    context.read<CounterCubit>().increment();
                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
