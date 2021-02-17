part of 'favorites_cubit.dart';

class FavoritesState extends Equatable {
  const FavoritesState(this.favorites);

  factory FavoritesState.initial() => FavoritesState(<String>[]);

  final List<String> favorites;

  @override
  List<Object> get props => [favorites];
}
