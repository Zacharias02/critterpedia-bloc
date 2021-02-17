import 'package:critterpedia/blocs/favorites/favorites_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton(this.fileName, {Key key}) : super(key: key);

  final String fileName;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        final bool isFavorite = state.favorites.contains(fileName);
        return GestureDetector(
          onTap: () {
            if (isFavorite) {
              BlocProvider.of<FavoritesCubit>(context)
                  .removeFavorites(fileName);
            } else {
              BlocProvider.of<FavoritesCubit>(context).addFavorites(fileName);
            }
          },
          child: Container(
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(
              16.0,
            ),
            child: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.white : Colors.black45,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isFavorite ? Colors.red : Colors.black12,
            ),
          ),
        );
      },
    );
  }
}
