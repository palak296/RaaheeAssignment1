import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:ui_clone/widgets/add_comment.dart';
import 'package:ui_clone/widgets/cmnt.dart';

import 'package:ui_clone/widgets/displayname.dart';
import 'package:ui_clone/widgets/extra_icon.dart';

class CardPage extends StatefulWidget {
  final String img;
  const CardPage({Key? key, required this.img}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          Hero(
            tag: 'imagehero${widget.img}',
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.img),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Dis_name(),
                Extra_icon(),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "#aesthetic #analog #colors",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  cmnt(
                    comment: "Wow, This looks awesome 😍",
                    name: "Foo",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  cmnt(
                    comment: "Thanks so much, glad you liked it🙏",
                    name: "Bar",
                  ),
                ],
              ),
            ),
          ),
          // TestMe(),
        ],
      ),
    );
  }
}
