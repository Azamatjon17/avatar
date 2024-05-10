import 'dart:ui';

import 'package:avatar/extensions/sizedboxhw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class SeconPage extends StatelessWidget {
  String imageaddres;
  String filmname;
  String country;
  String rate;
  String year;
  SeconPage({super.key, required this.imageaddres, this.country = "", this.filmname = "", required this.rate, this.year = ""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.topRight,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/$imageaddres"), fit: BoxFit.fill), color: Colors.white),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.broadcast_on_personal_outlined,
                  color: Colors.white,
                ),
              ),
            )),
        Flexible(
          flex: 2,
          child: Container(
            color: const Color(0xff15191E),
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 67,
                      width: 230,
                      child: Text(
                        filmname,
                        style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              CupertinoIcons.bookmark,
                              color: Colors.white60,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.send,
                              color: Colors.white60,
                            ))
                      ],
                    )
                  ],
                ),
                20.height(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Icon(
                      Icons.star,
                      color: Color(0xff771DD8),
                    ),
                    Text(
                      " $rate ",
                      style: const TextStyle(color: Color(0xff4C1982), fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      " $year ",
                      style: const TextStyle(color: Colors.white70, fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [BoxShadow(blurRadius: 10, color: Color(0xff431876))], color: Color(0xff15191E)),
                      child: const Text(
                        "+18",
                        style: TextStyle(color: Color(0xff431876), fontSize: 12),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [BoxShadow(blurRadius: 10, color: Color(0xff431876))], color: Color(0xff15191E)),
                      child: Text(
                        country,
                        style: const TextStyle(color: Color(0xff431876), fontSize: 12),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: [BoxShadow(blurRadius: 10, color: Color(0xff431876))], color: Color(0xff15191E)),
                      child: const Text(
                        "Subtitle",
                        style: TextStyle(color: Color(0xff431876), fontSize: 12),
                      ),
                    ),
                    5.width(),
                  ],
                ),
                15.height(),
                Row(
                  children: <Widget>[
                    Flexible(
                        child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xff771DD8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Icon(
                            Icons.play_circle_fill,
                            color: Colors.white,
                          ),
                          5.width(),
                          const Text(
                            "Play",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )),
                    15.width(),
                    Flexible(
                        child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [BoxShadow(blurRadius: 0, spreadRadius: 2, color: Color(0xff751CD6))],
                        color: const Color(0xff15191E),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Icon(
                            CupertinoIcons.arrow_down_to_line,
                            color: Color(0xff751CD6),
                          ),
                          5.width(),
                          const Text(
                            "Download",
                            style: TextStyle(color: Color(0xff751CD6), fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ))
                  ],
                ),
                20.height(),
                const Text(
                  "Lorem Ipsum is simply dummy text of zjbdsn ...",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                10.height(),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: "Lorem Ipsum is simply  printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown ...",
                  ),
                  TextSpan(text: "View More", style: TextStyle(color: Color.fromARGB(255, 83, 25, 243)))
                ]))
              ],
            ),
          ),
        )
      ],
    ));
  }
}
