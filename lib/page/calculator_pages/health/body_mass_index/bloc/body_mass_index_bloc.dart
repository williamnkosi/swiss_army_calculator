import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_mass_index_event.dart';
part 'body_mass_index_state.dart';
part 'body_mass_index_bloc.freezed.dart';

class BodyMassIndexBloc extends Bloc<BodyMassIndexEvent, BodyMassIndexState> {
  BodyMassIndexBloc() : super(_Initial()) {
    on<BodyMassIndexEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
