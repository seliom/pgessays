import 'package:flutter/material.dart';

import 'package:assets_audio_player/assets_audio_player.dart';

class Essay {
  final String id;
  final List<String> categories;
  final String title;
  //final List<String> content;
  final int position;
  final int mostTalkedPositon;
  final int mostReferredPosition;
  final int duration;
  final String audio;
  final bool isPGFavorite;
  final bool isMostReferred;
  final bool isMostTalked;

  const Essay(
      {@required this.id,
      @required this.categories,
      @required this.title,
      //@required this.content,
      @required this.position,
      this.mostTalkedPositon,
      this.mostReferredPosition,
      @required this.duration,
      @required this.isPGFavorite,
      @required this.isMostReferred,
      @required this.isMostTalked,
      @required this.audio});
}
