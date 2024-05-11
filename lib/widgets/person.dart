import 'package:avatar/extensions/sizedboxhw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PersonInfo extends StatelessWidget {
  String name;
  String surname;
  String position;
  String imageaddres;
  PersonInfo(this.name, this.surname, this.position, this.imageaddres, {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        child: Row(
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: AssetImage("assets/images/$imageaddres"))),
            ),
            7.width(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 10),
                ),
                Text(
                  surname,
                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 10),
                ),
                3.height(),
                Text(
                  position,
                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 7),
                ),
              ],
            )
          ],
        ));
  }
}
