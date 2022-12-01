import 'package:flutter/material.dart';

import 'bloc_screen.dart';
import 'cubit_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: "Bloc"),
            Tab(text: "Cubit"),
          ],
        ),
        title: Text(
          "Flutter Bloc",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          BlocPage(),
          CubitPage(),
        ],
      ),
    );
  }
}
