// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0));
  
  void increment()=> emit(CounterState(counterValue: state.counterValue + 1,wasIncrement: true));

  void decrement()=> emit(CounterState(counterValue: state.counterValue - 1,wasIncrement: false));

}
