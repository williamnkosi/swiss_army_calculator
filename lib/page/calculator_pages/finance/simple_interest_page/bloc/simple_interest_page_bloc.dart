import 'package:bloc/bloc.dart';

import '../../../../../utils/finance_formulas.dart';
import 'simple_interest_page_event.dart';
import 'simple_interest_page_state.dart';

class SimpleInterestPageBloc
    extends Bloc<SimpleInterestPageEvent, SimpleInterestPageState> {
  SimpleInterestPageBloc() : super(const SimpleInterestPageState()) {
    on<ToggleInfoEvent>(_onToggleInfoEvent);
    on<CheckFormStateEvent>(_onCheckFormStateEvent);
    on<CalculateResultEvent>(_onCalculateResult);
  }

  _onToggleInfoEvent(ToggleInfoEvent event, emit) {}
  _onCheckFormStateEvent(event, emit) {
    print(event);
    try {
      print('trying');
      if (event.formKey.currentState!.validate()) {
        event.formKey.currentState?.save();
        emit(state.copyWith(isDiabled: false));
        print('worked');
      } else {
        emit(state.copyWith(isDiabled: true));
        print('nope');
      }
    } catch (e) {
      print(e);
      emit(state.copyWith(isDiabled: true));
    }
  }

  _onCalculateResult(event, emit) {
    final result = calculateSimpleInterest(double.parse(event.principle),
        double.parse(event.rate), double.parse(event.duration));
    emit(state.copyWith(result: result));
  }
}
