import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class Extra_icon extends StatefulWidget {
  const Extra_icon({Key? key}) : super(key: key);

  @override
  _Extra_iconState createState() => _Extra_iconState();
}

class _Extra_iconState extends State<Extra_icon> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FavoriteButton(
          iconSize: 40,
          isFavorite: true,
          // iconDisabledColor: Colors.white,
          valueChanged: (_isFavorite) {
            print('Is Favorite : $_isFavorite');
          },
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.send,
          color: Colors.white,
        )
      ],
    );
  }
}
