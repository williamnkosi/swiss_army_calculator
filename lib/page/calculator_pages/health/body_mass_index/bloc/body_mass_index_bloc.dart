import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swiss_army_calculator/models/calculators.dart';

part 'body_mass_index_event.dart';
part 'body_mass_index_state.dart';
part 'body_mass_index_bloc.freezed.dart';

class BodyMassIndexBloc extends Bloc<BodyMassIndexEvent, BodyMassIndexState> {
  BodyMassIndexBloc(HealthCalculator calculator)
      : super(BodyMassIndexState(calculatorData: calculator)) {
    on<BodyMassIndexBlocStarted>(_onBodyMassIndexBlocStarted);
  }

  _onBodyMassIndexBlocStarted(
      BodyMassIndexBlocStarted event, Emitter<BodyMassIndexState> emit) {
    emit(state.copyWith(calculatorData: event.calculator));
  }

  @override
  void onChange(Change<BodyMassIndexState> change) {
    print(change.currentState.calculatorData?.type ?? 'null');
    print(change.nextState.calculatorData?.name ?? 'null');
    super.onChange(change);
  }
}
