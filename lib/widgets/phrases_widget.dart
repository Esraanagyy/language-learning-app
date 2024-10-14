import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/number_model.dart';

class PhrasesWidget extends StatelessWidget {
  const PhrasesWidget({super.key, required this.phrase, required this.colors});
  final Model phrase;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: colors,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  phrase.enName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: IconButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource(phrase.sound));
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 32,
                  ))),
        ],
      ),
    );
  }
}
