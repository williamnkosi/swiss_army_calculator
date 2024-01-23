import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'compound_interest_page_event.dart';
part 'compound_interest_page_state.dart';
part 'compound_interest_page_bloc.freezed.dart';

class CompoundInterestPageBloc
    extends Bloc<CompoundInterestPageEvent, CompoundInterestPageState> {
  CompoundInterestPageBloc()
      : super(
            CompoundInterestPageState(formKey: GlobalKey<FormBuilderState>())) {
    on<CompoundInterestPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
