import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/counter_bloc/bloc/counter_bloc.dart';





class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Counter App Using Bloc",
              style: TextStyle(fontSize: 25),
            ),
            BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
              return Text(
                state.count.toString(),
                style: const TextStyle(fontSize: 25),
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(context)
                        .add(DecrementCounterEvent());
                  },
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () {
                    BlocProvider.of<CounterBloc>(context)
                        .add(IncrementCounterEvent());
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}