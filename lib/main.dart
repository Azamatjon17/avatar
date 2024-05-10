import 'package:avatar/extensions/sizedboxhw.dart';
import 'package:avatar/pages/secondpage.dart';
import 'package:avatar/utils/filminformation.dart';
import 'package:avatar/widgets/filim.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainBody(),
  ));
}

class MainBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Mainbody();
  }
}

class _Mainbody extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff15191E),
      bottomNavigationBar: Container(
          height: 80,
          color: const Color(0xff15191E),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Column(
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: Color(0xff721DCD),
                      size: 35,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Color(0xff721DCD)),
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Column(
                  children: <Widget>[
                    Icon(
                      Icons.explore,
                      color: Colors.white70,
                      size: 35,
                    ),
                    Text(
                      "Explore",
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Column(
                  children: <Widget>[
                    Icon(
                      Icons.bookmark_added_outlined,
                      color: Colors.white70,
                      size: 35,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Column(
                  children: <Widget>[
                    Icon(
                      Icons.download,
                      color: Colors.white70,
                      size: 35,
                    ),
                    Text(
                      "Download",
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Column(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      color: Colors.white70,
                      size: 35,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              )
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70,
          left: 5,
          right: 5,
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(
                    flex: 6,
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white12),
                      child: Row(
                        children: <Widget>[
                          const Icon(CupertinoIcons.search, color: Colors.white30),
                          10.width(),
                          const Text(
                            "Search",
                            style: TextStyle(fontSize: 20, color: Colors.white30),
                          )
                        ],
                      ),
                    )),
                10.width(),
                Flexible(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0xff261A1E)),
                      child: const Icon(
                        Icons.tune,
                        color: Color(0xff741CCC),
                        size: 30,
                      ),
                    )),
              ],
            ),
            20.height(),
            Flexible(
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 15,
                  children: FilimInformations.films.map((film) {
                    return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SeconPage(
                                        imageaddres: film["imageaddres"],
                                        rate: film["rate"],
                                        country: film["country"],
                                        filmname: film["filmname"],
                                        year: film["year"],
                                      )));
                        },
                        child: Film(imageaddres: film["imageaddres"], rate: film["rate"]));
                  }).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
