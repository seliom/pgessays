//import 'dart:ffi';
//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../screens/essay_screen.dart';
import '../models/essay.dart';

// enum Complexity{
//   Simple,
//   Challenging,
//   Hard,
// }

class EssayItem extends StatelessWidget {
  final String id;
  final String title;
  final int duration;
  final String audio;

  EssayItem({
    @required this.id,
    @required this.title,
    @required this.duration,
    @required this.audio,
  });

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(EssayScreen.routeName, arguments: {
      'title': title,
      'id': id,
      'audio': audio,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        color: Colors.white,
        // color: Color.fromRGBO(127, 185, 222, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(10.0, 0.0, 100.0, 0.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Color.fromRGBO(127, 185, 222, 1)),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    )),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    duration.toString() + ' mins',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Color.fromRGBO(127, 185, 222, 1),
                    ),
                  ),
                ),
                // Positioned(
                //     right: 0,
                //     bottom: 0,
                //     child: Container(child: Text()))
              ],
            )
          ],
        ),
      ),
    );
  }
}
