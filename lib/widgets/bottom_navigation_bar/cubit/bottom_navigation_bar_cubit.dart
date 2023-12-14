import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../models/bottom_navigation_types.dart';

part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarCubit extends Cubit<BottomNavigationBarState> {
  BottomNavigationBarCubit()
      : super(const BottomNavigationBarState(type: BottomNavTypes.home));

  void switchTab(int index) =>
      emit(BottomNavigationBarState(type: BottomNavTypes.values[index]));
}
