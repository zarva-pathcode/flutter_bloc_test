import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/counter_bloc.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "${state.value}",
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                heroTag: Text('First'),
                onPressed: () {
                  context.read<CounterBloc>().add(Decrement());
                },
                tooltip: 'Decrement',
                child: Icon(Icons.remove),
              ),
              FloatingActionButton(
                heroTag: Text('Second'),
                onPressed: () {
                  context.read<CounterBloc>().add(Increment());
                },
                tooltip: 'Increment',
                child: Icon(Icons.add),
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
        ],
      );
    });
  }
}
