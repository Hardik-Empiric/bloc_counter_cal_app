import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementCounterEvent) {
        emit(CounterState(count: state.count + 1));
      }
      if (event is DecrementCounterEvent) {
        emit(CounterState(count: state.count - 1));
      }
      // TODO: implement event handler
    });
  }
}
