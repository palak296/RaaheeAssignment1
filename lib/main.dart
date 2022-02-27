import 'package:flutter/material.dart';
import 'package:ui_clone/navigation_bar.dart';

import 'widgets/cards.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
      body: SafeArea(
        child: Expanded(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  bottom: 50,
                  right: 10,
                  left: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.grey[300],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.blue,
                            backgroundImage: ExactAssetImage('images/n1.jpg'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '@ughpalak',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.verified,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Icon(
                          Icons.notifications,
                          size: 35,
                        ),
                        Positioned(
                          right: 0,
                          child: Icon(Icons.brightness_1,
                              size: 16, color: Colors.red[900]),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Cards(img: "images/n2.jpg"),
                    Cards(img: "images/n3.jpg"),
                    Cards(img: "images/n1.jpeg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}
