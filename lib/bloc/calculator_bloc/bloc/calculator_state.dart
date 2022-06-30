part of 'calculator_bloc.dart';

class CalculatorState {
  double num1;
  double num2;
  double ans;
  String operation;

  CalculatorState(
      {required this.num1,
      required this.num2,
      required this.ans,
      required this.operation});
}

class CalculatorInitial extends CalculatorState {
  CalculatorInitial() : super(num1: 0, num2: 0, ans: 0, operation: 'Operation');
}
