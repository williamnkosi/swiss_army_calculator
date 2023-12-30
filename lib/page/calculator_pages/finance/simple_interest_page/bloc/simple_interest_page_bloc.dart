import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'simple_interest_page_event.dart';
import 'simple_interest_page_state.dart';

class SimpleInterestPageBloc
    extends Bloc<SimpleInterestPageEvent, SimpleInterestPageState> {
  SimpleInterestPageBloc() : super(const SimpleInterestPageState()) {
    on<ToggleInfo>((event, emit) {});
  }
}
