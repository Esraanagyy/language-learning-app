import 'package:flutter/material.dart';
import 'package:language_learning/models/number_model.dart';
import 'package:language_learning/widgets/item_widget.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({super.key});

  List<Model> color = [
    Model(
        sound: "sounds/colors/black.wav",
        image: "assets/images/colors/color_black.png",
        jpName: "burakku",
        enName: "black"),
    Model(
        sound: "sounds/colors/brown.wav",
        image: "assets/images/colors/color_brown.png",
        jpName: "chairo",
        enName: "brown"),
    Model(
        sound: "sounds/colors/dusty yellow.wav",
        image: "assets/images/colors/color_dusty_yellow.png",
        jpName: "hokori ppoi kiiro",
        enName: "dusty yellow"),
    Model(
        sound: "sounds/colors/gray.wav",
        image: "assets/images/colors/color_gray.png",
        jpName: "gure",
        enName: "gray"),
    Model(
        sound: "sounds/colors/green.wav",
        image: "assets/images/colors/color_green.png",
        jpName: "midori",
        enName: "green"),
    Model(
        sound: "sounds/colors/red.wav",
        image: "assets/images/colors/color_red.png",
        jpName: "aka",
        enName: "red"),
    Model(
        sound: "sounds/colors/white.wav",
        image: "assets/images/colors/color_white.png",
        jpName: "shiroi",
        enName: "white"),
    Model(
        sound: "sounds/colors/yellow.wav",
        image: "assets/images/colors/yellow.png",
        jpName: "kiiro",
        enName: "yellow"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322b),
        title: const Text(
          "Colors",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ItemWidget(
            model: color[index],
            colors: const Color(0xff79359f),
          );
        },
        itemCount: color.length,
      ),
    );
  }
}
