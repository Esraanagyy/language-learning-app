import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/models/number_model.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.model, required this.colors});
  final Model model;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: colors,
      child: Row(
        children: [
          Container(
              color: const Color(0xfffff6dc), child: Image.asset(model.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  model.jpName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  model.enName,
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
                    player.play(AssetSource(model.sound));
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
