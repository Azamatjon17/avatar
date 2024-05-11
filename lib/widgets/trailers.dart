import 'package:avatar/extensions/sizedboxhw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Trailer extends StatelessWidget {
  String imageaddres;
  String title;
  String time;
  Trailer(this.imageaddres, this.title, this.time, {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: <Widget>[
          Container(
            height: 100,
            width: 175,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), image: DecorationImage(image: AssetImage("assets/images/$imageaddres"), fit: BoxFit.fill)),
          ),
          20.width(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              5.height(),
              Text(
                time,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              ),
              const Card(
                color: Color.fromARGB(255, 47, 7, 87),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    "Update",
                    style: TextStyle(fontSize: 10, color: Color.fromARGB(255, 99, 37, 146)),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Trailers extends StatelessWidget {
  String imagaddres;

  Trailers(this.imagaddres, {super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: SingleChildScrollView(
      child: Column(
        children: <Widget>[Trailer("xmen.png", "Trailer 3: Final", "1m 45s"), 20.height(), Trailer("avatar.png", "Trailer 3: Final", "1m 45s"), 20.height(), Trailer("avatar.png", "Trailer 3: Final", "1m 45s")],
      ),
    ));
  }
}
