import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:xylophone_app_flutter/models/key.dart';

class XylophoneWidget extends StatelessWidget {
  const XylophoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    void playSound(int soundNumber) {
      final assetsAudioPlayer = AssetsAudioPlayer();
      assetsAudioPlayer.open(
        Audio('lib/assets/sounds/note$soundNumber.wav'),
      );
    }

    Widget buildKey({required int soundNumber, required Color color}) {
      return KeyWidget(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildKey(soundNumber: 1, color: Colors.red),
        buildKey(soundNumber: 2, color: Colors.orange),
        buildKey(soundNumber: 3, color: Colors.yellow),
        buildKey(soundNumber: 4, color: Colors.green),
        buildKey(soundNumber: 5, color: Colors.teal),
        buildKey(soundNumber: 6, color: Colors.blue),
        buildKey(soundNumber: 7, color: Colors.purple),
      ],
    );
  }
}
