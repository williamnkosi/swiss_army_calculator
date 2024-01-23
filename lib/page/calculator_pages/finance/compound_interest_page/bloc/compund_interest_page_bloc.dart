import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'compund_interest_page_event.dart';
part 'compund_interest_page_state.dart';
part 'compund_interest_page_bloc.freezed.dart';

class CompundInterestPageBloc extends Bloc<CompundInterestPageEvent, CompundInterestPageState> {
  CompundInterestPageBloc() : super(_Initial()) {
    on<CompundInterestPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
