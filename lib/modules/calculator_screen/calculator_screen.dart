
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/calculator_bloc/bloc/calculator_bloc.dart';
import '../../models/calculator_models/calculator_data.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);


  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextField(
                    controller: firstNumberController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'First number',
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextField(
                    controller: secondNumberController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Second number',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CalculatorBloc>(context).add(AdditionEvent());
                  },
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CalculatorBloc>(context).add(SubtractionEvent());
                  },
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CalculatorBloc>(context).add(MultiplicationEvent());
                  },
                  child: const Text('*',style:  TextStyle(color: Colors.white,fontSize: 35),),
                ),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CalculatorBloc>(context).add(DivisionEvent());
                  },
                  child: const Text('/',style:  TextStyle(color: Colors.white,fontSize: 20),),
                ),
              ],
            ),
            BlocBuilder<CalculatorBloc, CalculatorState>(
                builder: (context, state) {
                  return Text(
                    '${state.operation} : ${state.ans.toStringAsFixed(2)}',
                    style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
