import 'package:freezed_annotation/freezed_annotation.dart';
part 'simple_interest_page_state.freezed.dart';

@freezed
class SimpleInterestPageState with _$SimpleInterestPageState {
  const factory SimpleInterestPageState({
    @Default(0) double result,
    @Default(false) isExpanded,
    @Default(true) isDiabled,
  }) = _SimpleInterestPageState;
}
