import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/presentation/pages/bloc_and_cubit/tab_screen.dart';
import 'package:flutter_bloc_test/presentation/pages/performance/performance_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ));
                },
                child: Text("Bloc")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PerformancePage(),
                      ));
                },
                child: Text("Flutter performances"))
          ],
        ),
      ),
    );
  }
}
