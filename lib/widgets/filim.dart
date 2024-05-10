import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Film extends StatelessWidget {
  String imageaddres;
  String filmname;
  String country;
  String rate;
  String year;
  Film({super.key, required this.imageaddres, this.country = "", this.filmname = "", required this.rate, this.year = ""});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.topLeft,
        height: 250,
        width: 180,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), image: DecorationImage(image: AssetImage("assets/images/$imageaddres"), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff771DD8),
          ),
          child: Text(
            " $rate ",
            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15),
          ),
        ),
      ),
    ]);
  }
}
