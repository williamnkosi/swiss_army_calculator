part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.started() = _Started;
  const factory FavoritesEvent.getFavorites() = GetFavorites;
  const factory FavoritesEvent.addFavorite({required String id}) = AddFavorite;
  const factory FavoritesEvent.removeFavorite({required String id}) =
      RemoveFavorite;
}
