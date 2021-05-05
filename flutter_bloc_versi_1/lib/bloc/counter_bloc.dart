import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // CounterBloc(CounterState initialState) : super(CounterState(0));

  CounterBloc() : super(CounterState(0));
  //
  CounterState get initialState => CounterState(0);

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    yield (event is Increment)
        ? CounterState(state.value + 1)
        : CounterState(state.value - 1);
  }
}