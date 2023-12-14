part of 'bottom_navigation_bar_cubit.dart';

class BottomNavigationBarState extends Equatable {
  const BottomNavigationBarState({this.type = BottomNavTypes.home});

  final BottomNavTypes type;

  @override
  List<Object?> get props => [type];
}
