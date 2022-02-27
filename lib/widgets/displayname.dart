import 'package:flutter/material.dart';

class Dis_name extends StatelessWidget {
  const Dis_name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://pbs.twimg.com/profile_images/1484416288097116160/xLR2e4eu_400x400.png"),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Palak Garg',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
      ],
    );
  }
}
