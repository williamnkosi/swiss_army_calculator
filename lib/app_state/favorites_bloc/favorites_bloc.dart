import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/calculator_types.dart';
part 'favorites_event.dart';
part 'favorites_bloc.freezed.dart';
part 'favorites_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(const FavoritesState()) {
    on<GetFavorites>(_onGetFavorites);
    on<ToggleFavorite>(_onToggleFavorite);
  }

  _onGetFavorites(GetFavorites event, emit) {}
  _onToggleFavorite(ToggleFavorite event, emit) {
    try {
      List<FinanceCalculators> newList = List.from(state.favorites);
      if (newList.contains(event.calculator)) {
        newList.remove(event.calculator);
      } else {
        newList.add(event.calculator);
      }
      emit(state.copyWith(favorites: newList));
    } catch (e) {}
  }
}
