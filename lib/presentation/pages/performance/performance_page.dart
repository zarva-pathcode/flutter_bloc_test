import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/presentation/pages/performance/second_page.dart';
import 'package:flutter_bloc_test/presentation/pages/performance/third_page.dart';

import 'fifth_page.dart';
import 'first_page.dart';
import 'fourth_page.dart';

class PerformancePage extends StatelessWidget {
  const PerformancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 2 / 1,
          children: [
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FirstPage(),
                    ),
                  );
                },
                child: Container(
                  color: Colors.blueGrey,
                  padding: const EdgeInsets.all(16),
                  child: Stack(
                    children: const [
                      Text(
                        '1',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ),
                  );
                },
                child: Container(
                  color: Colors.lightGreen,
                  padding: const EdgeInsets.all(16),
                  child: Stack(
                    children: const [
                      Text(
                        '2',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdPage(),
                    ),
                  );
                },
                child: Container(
                  color: Colors.lightBlue,
                  padding: const EdgeInsets.all(16),
                  child: Stack(
                    children: const [
                      Text(
                        '3',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FourthPage(),
                    ),
                  );
                },
                child: Container(
                  color: Colors.orange,
                  padding: const EdgeInsets.all(16),
                  child: Stack(
                    children: const [
                      Text(
                        '4',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FifthPage(),
                    ),
                  );
                },
                child: Container(
                  color: Colors.indigo,
                  padding: const EdgeInsets.all(16),
                  child: Stack(
                    children: const [
                      Text(
                        '5',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
