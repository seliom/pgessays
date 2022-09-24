import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../screens/category_essays_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryEssaysScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Colors.white, //Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
          color: Color.fromRGBO(127, 185, 222, 1),
          // gradient: LinearGradient(colors: [
          //   color.withOpacity(0.99),
          //   //Colors.blueGrey,
          //   Colors.blue,
          //   Colors.lightBlue,
          //   color,
          // ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
