import 'package:flutter/material.dart';
import 'package:ui_clone/widgets/card_page.dart';
import 'package:ui_clone/widgets/displayname.dart';
import 'package:ui_clone/widgets/sidebar.dart';

class Cards extends StatelessWidget {
  //Cards(this.img);
  const Cards({Key? key, required this.img}) : super(key: key);
  final String img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          print("tapped");
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CardPage(img: img)));
        },
        child: Hero(
          tag: 'imagehero$img',
          child: Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Sidebar(),
                  // ignore: prefer_const_constructors
                  Dis_name(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Howdy! hope you'll are good 💀",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const Text(
                    "#aesthetics #clone #flutter #UI",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
