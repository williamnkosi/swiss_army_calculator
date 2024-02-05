import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ideal_weight_page_event.dart';
part 'ideal_weight_page_state.dart';
part 'ideal_weight_page_bloc.freezed.dart';

class IdealWeightPageBloc extends Bloc<IdealWeightPageEvent, IdealWeightPageState> {
  IdealWeightPageBloc() : super(_Initial()) {
    on<IdealWeightPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
