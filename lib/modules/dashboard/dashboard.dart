import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DashBoard'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                  Navigator.of(context).pushNamed('counter_screen');
              },
              child: const Text('Counter Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('calculator_screen');
              },
              child: const Text('Calculator Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
