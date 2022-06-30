import 'package:demo_counter_bloc/bloc/calculator_bloc/bloc/calculator_bloc.dart';
import 'package:demo_counter_bloc/modules/calculator_screen/calculator_screen.dart';
import 'package:demo_counter_bloc/modules/counter_screen/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc/bloc/counter_bloc.dart';
import 'modules/dashboard/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalculatorBloc(),
      child: BlocProvider(
        create: (context) => CounterBloc(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            '/': (context) => const DashBoard(),
            'counter_screen': (context) => const CounterScreen(),
            'calculator_screen': (context) => const CalculatorScreen(),
          },
        ),
      ),
    );
  }
}
