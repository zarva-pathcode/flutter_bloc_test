import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_test/bloc/counter_bloc.dart';
import 'package:flutter_bloc_test/cubit/counter_cubit.dart';
import 'package:flutter_bloc_test/presentation/pages/bloc_and_cubit/tab_screen.dart';
import 'package:flutter_bloc_test/presentation/pages/main_page.dart';
import 'package:flutter_bloc_test/presentation/router/app_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // final AppRouter appRouter;
  // final Connectivity connectivity;

  // MyApp({required this.appRouter, required this.connectivity});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          BlocProvider<CounterBloc>(
            create: (_) => CounterBloc(),
          ),
          BlocProvider<CounterCubit>(
            create: (_) => CounterCubit(),
          )
        ],
        child: MaterialApp(
          // onGenerateRoute: appRouter.onGenerateRoute,
          title: 'Flutter Bloc',
          home: MainPage(),

          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
        ));
  }
}
