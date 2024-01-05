import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

import '../../models/calculator_types.dart';
part 'favorites_event.dart';
part 'favorites_bloc.freezed.dart';
part 'favorites_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(const FavoritesState()) {
    on<GetFavorites>(_onGetFavorites);
    on<AddFavorite>(_onAddFavorite);
    on<RemoveFavorite>(_onRemoveFavorite);
  }

  _onGetFavorites(GetFavorites event, emit) {}
  _onAddFavorite(AddFavorite event, emit) {}
  _onRemoveFavorite(RemoveFavorite event, emit) {}
}
