import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class EssayScreen extends StatefulWidget {
  static const routeName = '/essay-screen';

  @override
  _EssayScreenState createState() {
    return _EssayScreenState();
  }
}

class _EssayScreenState extends State<EssayScreen> {
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  bool _play = false;
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = routeArgs['title'];
    final id = routeArgs['id'];
    final audio = routeArgs['audio'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$title',
          softWrap: true,
          overflow: TextOverflow.fade,
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          Container(
            height: 300,
            child: Image.asset(
              'assets/images/pgimage.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 20),
          AudioWidget.assets(
            play: _play,
            path: audio,
            child: Center(
              child: ElevatedButton(
                  child: Text(
                    _play ? "Pause" : "Play",
                  ),
                  onPressed: () {
                    setState(() {
                      _play = !_play;
                    });
                  }),
            ),
            onReadyToPlay: (duration) {
              //onReadyToPlay
            },
            onPositionChanged: (current, duration) {
              //onPositionChanged
            },
          ),
        ],
      ),
    );
  }
}
