import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_complete_guide/widgets/category_item.dart';

import '../data/dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 180),
          height: 470,
          child: GridView(
            padding: const EdgeInsets.all(25),
            children: DUMMY_CATEGORIES
                .sublist(0, 4)
                .map(
                  (catData) =>
                      CategoryItem(catData.id, catData.title, catData.color),
                )
                .toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 8 / 5,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
          ),
        ),
        Text(
          'Topic-wise Categories',
          style: TextStyle(
              fontSize: 20, color: Colors.orange, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 390,
          child: GridView(
            padding: const EdgeInsets.all(25),
            children: DUMMY_CATEGORIES
                .sublist(4)
                .map(
                  (catData) =>
                      CategoryItem(catData.id, catData.title, catData.color),
                )
                .toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 280,
              childAspectRatio: 8 / 5,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
            ),
          ),
        ),
      ],
    );
  }
}

//Two Groups - need different styling
//DUMMY_CATEGORIES.sublist(0,4)
//DUMMY_CATEGORIES.sublist(4)
