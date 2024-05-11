import 'dart:ffi';
import 'dart:ui';

import 'package:avatar/extensions/sizedboxhw.dart';
import 'package:avatar/styles/styels.dart';
import 'package:avatar/widgets/comments.dart';
import 'package:avatar/widgets/morelike.dart';
import 'package:avatar/widgets/person.dart';
import 'package:avatar/widgets/trailers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

String image = "";

// ignore: must_be_immutable
class SeconPage extends StatefulWidget {
  String imageaddres;
  String filmname;
  String country;
  String rate;
  String year;
  SeconPage({super.key, this.imageaddres = "", this.country = "", this.filmname = "", required this.rate, this.year = ""});
  setimage() {
    image = imageaddres;
  }

  @override
  // ignore: no_logic_in_create_state
  State<SeconPage> createState() => _SeconPageState();
}

List<Widget> tabs = [Trailers(image), MoreLike(), Comments()];

class _SeconPageState extends State<SeconPage> {
  int currentdivider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.topRight,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/${widget.imageaddres}"), fit: BoxFit.fill), color: Colors.white),
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
                        widget.filmname,
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
                      " ${widget.rate} ",
                      style: const TextStyle(color: Color(0xff4C1982), fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      " ${widget.year} ",
                      style: const TextStyle(color: Colors.white70, fontWeight: FontWeight.w400, fontSize: 15),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: const [BoxShadow(blurRadius: 10, color: Color(0xff431876))], color: const Color(0xff15191E)),
                      child: const Text(
                        "+18",
                        style: TextStyle(color: Color(0xff431876), fontSize: 12),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: const [BoxShadow(blurRadius: 10, color: Color(0xff431876))], color: const Color(0xff15191E)),
                      child: Text(
                        widget.country,
                        style: const TextStyle(color: Color(0xff431876), fontSize: 12),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), boxShadow: const [BoxShadow(blurRadius: 10, color: Color(0xff431876))], color: const Color(0xff15191E)),
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
                ])),
                15.height(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[PersonInfo("Jomes", "Camoren", "Director", "person.png"), 10.width(), PersonInfo("Jomes", "Camoren", "Director", "person.png"), 10.width(), PersonInfo("Jomes", "Camoren", "Director", "person.png"), 10.width(), PersonInfo("Jomes", "Camoren", "Director", "person.png"), 10.width(), PersonInfo("Jomes", "Camoren", "Director", "person.png")],
                  ),
                ),
                10.height(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              currentdivider = 0;
                            });
                          },
                          child: Text(
                            "Trailers",
                            style: TextStyle(color: currentdivider == 0 ? const Color(0xff771DD8) : Colors.white70),
                          ),
                        )),
                    Flexible(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              currentdivider = 1;
                            });
                          },
                          child: Text(
                            "More Like This",
                            style: TextStyle(color: currentdivider == 1 ? const Color(0xff771DD8) : Colors.white70),
                          ),
                        )),
                    Flexible(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              currentdivider = 2;
                            });
                          },
                          child: Text(
                            "Comments",
                            style: TextStyle(color: currentdivider == 2 ? const Color(0xff771DD8) : Colors.white70),
                          ),
                        ))
                  ],
                ),
                Stack(
                  children: <Widget>[
                    const Divider(
                      color: Colors.white60,
                      thickness: 2,
                    ),
                    Divider(
                      indent: Dividersize.devider[currentdivider][0].toDouble(),
                      endIndent: Dividersize.devider[currentdivider][1].toDouble(),
                      color: const Color(0xff771DD8),
                      thickness: 2,
                    ),
                  ],
                ),
                5.height(),
                tabs[currentdivider]
              ],
            ),
          ),
        )
      ],
    ));
  }
}
