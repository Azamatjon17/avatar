import 'package:avatar/pages/secondpage.dart';
import 'package:avatar/utils/filminformation.dart';
import 'package:avatar/widgets/filim.dart';
import 'package:flutter/material.dart';

class MoreLike extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
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
    );
  }
}
