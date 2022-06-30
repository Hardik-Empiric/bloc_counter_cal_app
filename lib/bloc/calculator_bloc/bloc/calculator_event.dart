
part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent {}

class AdditionEvent extends CalculatorEvent {}
class SubtractionEvent extends CalculatorEvent {}
class MultiplicationEvent extends CalculatorEvent {}
class DivisionEvent extends CalculatorEvent {}
