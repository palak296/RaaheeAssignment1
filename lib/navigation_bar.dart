import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      //bottom navigation bar on scaffold
      color: Colors.grey,
      shape: CircularNotchedRectangle(), //shape of notch
      notchMargin: 5, //notche margin between floating button and bottom appbar
      child: Row(
        //children inside bottom appbar
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              Positioned(
                right: 10,
                top: 10,
                child:
                    Icon(Icons.brightness_1, size: 10, color: Colors.red[900]),
              )
            ],
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
