import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<IncrementCounter>((event, emit) {
      emit(
        CounterState(state.countervalue + 1),
      );
    });

    on<DecrementCounter>((event, emit) {
      emit(
        CounterState(state.countervalue - 1),
      );
    });
  }
}
