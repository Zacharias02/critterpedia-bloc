import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton(this.fileName, {Key key}) : super(key: key);

  final String fileName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Add action when tapping the favorite button
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(
          16.0,
        ),
        child: Icon(
          Icons.favorite_border,
          color: Colors.black45,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black12,
        ),
      ),
    );
  }
}
