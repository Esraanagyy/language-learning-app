import 'package:flutter/material.dart';
import 'package:language_learning/models/number_model.dart';
import 'package:language_learning/widgets/phrases_widget.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({super.key});

  List<Model> phrase = [
    Model(
        sound: "sounds/phrases/are_you_coming.wav",
        jpName: "kimasu ka",
        enName: "are you coming"),
    Model(
        sound: "sounds/phrases/dont_forget_to_subscribe.wav",
        jpName: "kōdoku suru koto o wasurenaide kudasai",
        enName: "don't forget to subscribe"),
    Model(
        sound: "sounds/phrases/how_are_you_feeling.wav",
        jpName: "go kibun wa ikagadesu ka",
        enName: "how are you feeling"),
    Model(
        sound: "sounds/phrases/i_love_anime.wav",
        jpName: "watashi wa anime ga daisukidesu",
        enName: "i love anime"),
    Model(
        sound: "sounds/phrases/i_love_programming.wav",
        jpName: "watashi wa puroguramingu ga \n daisukidesu",
        enName: "i love programming"),
    Model(
        sound: "sounds/phrases/programming_is_easy.wav",
        jpName: "puroguramingu wa kantandesu",
        enName: "programming is easy"),
    Model(
        sound: "sounds/phrases/what_is_your_name.wav",
        jpName: "Aanata no namae wa nanidesu ka?",
        enName: "what is your name?"),
    Model(
        sound: "sounds/phrases/where_are_you_going.wav",
        jpName: "Doko ni iku no?",
        enName: "where are you going?"),
    Model(
        sound: "sounds/phrases/yes_im_coming.wav",
        jpName: "hai, ikimasu",
        enName: "yes, i'm coming"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322b),
        title: const Text(
          "Phrases",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return PhrasesWidget(
            phrase: phrase[index],
            colors: const Color(0xff50adc7),
          );
        },
        itemCount: phrase.length,
      ),
    );
  }
}
