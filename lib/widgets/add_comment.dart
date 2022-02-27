import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blueGrey[800],
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage("images/n1.jpeg"),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 50.0,
            ),
            child: Container(
              width: 300,
              child: Text("Write Your Comment Here ...",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w900)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white),
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
