import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(FavoritesState.initial());

  void addFavorites(String fileName) {
    final List<String> newList = [];

    newList.addAll(state.favorites);
    newList.add(fileName);

    print(newList);

    emit(FavoritesState(newList));
  }

  void removeFavorites(String fileName) {
    final List<String> newList = [];
    newList.addAll(state.favorites);
    newList.removeWhere((String favorite) => favorite == fileName);

    emit(FavoritesState(newList));
  }
}
