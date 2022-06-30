import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:demo_counter_bloc/models/calculator_models/calculator_data.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorInitial()) {
    
    on<CalculatorEvent>((event, emit) {

      if (event is AdditionEvent)         emit(CalculatorState(num1: double.parse(firstNumberController.text),num2: double.parse(secondNumberController.text),ans: double.parse(firstNumberController.text) + double.parse(secondNumberController.text),operation: 'Addition'));
      if (event is SubtractionEvent)      emit(CalculatorState(num1: double.parse(firstNumberController.text),num2: double.parse(secondNumberController.text), ans: double.parse(firstNumberController.text) - double.parse(secondNumberController.text),operation: 'Subtraction'));
      if (event is MultiplicationEvent)   emit(CalculatorState(num1: double.parse(firstNumberController.text),num2: double.parse(secondNumberController.text),ans: double.parse(firstNumberController.text) * double.parse(secondNumberController.text), operation: 'Multiplication'));
      if (event is DivisionEvent)         emit(CalculatorState(num1: double.parse(firstNumberController.text),num2: double.parse(secondNumberController.text), ans: double.parse(firstNumberController.text) / double.parse(secondNumberController.text),operation: 'Division'));



    });
  }
}
