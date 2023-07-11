import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInit());
  int c = 0;
  void increase() {
    c++;
    emit(IncreaseState(c));
  }

  void decrease() {
    c--;
    emit(DecreeseState(c));
  }
}

class CounterState {}

class CounterInit extends CounterState {}

class IncreaseState extends CounterState {
  final int c;
  IncreaseState(this.c);
}

class DecreeseState extends CounterState {
  final int c;
  DecreeseState(this.c);
}
