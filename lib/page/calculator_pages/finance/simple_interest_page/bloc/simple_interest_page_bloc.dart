import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'simple_interest_page_event.dart';
part 'simple_interest_page_state.dart';

class SimpleInterestPageBloc extends Bloc<SimpleInterestPageEvent, SimpleInterestPageState> {
  SimpleInterestPageBloc() : super(SimpleInterestPageInitial()) {
    on<SimpleInterestPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
