import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/essay_item.dart';

import '../data/dummy_data.dart';

class CategoryEssaysScreen extends StatelessWidget {
  static const routeName = '/category-essays';
  // final categoryId;
  // final categoryTitle;

  // const CategoryEssaysScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final audio = routeArgs['audio'];
    final categoryEssays = DUMMY_ESSAYS.where((essay) {
      return essay.categories.contains(categoryId);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                EssayItem(
                  id: categoryEssays[index].id,
                  title: categoryEssays[index].title,
                  duration: categoryEssays[index].duration,
                  audio: categoryEssays[index].audio,
                ),
              ],
            );
          },
          itemCount: categoryEssays.length,
        ));
  }
}
