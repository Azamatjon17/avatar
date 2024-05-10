import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class PersonInfo extends StatelessWidget {
  String name;
  String surname;
  String position;
  PersonInfo(this.name, this.surname, this.position, {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: Row(
          children: <Widget>[
            Container(
              height: 15,
              width: 15,
              decoration: const BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: AssetImage("assets/images/xmen.png"))),
            ),
            Column(
              children: <Widget>[
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ));
  }
}
