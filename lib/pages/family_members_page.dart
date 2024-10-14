import 'package:flutter/material.dart';
import 'package:language_learning/models/number_model.dart';
import 'package:language_learning/widgets/item_widget.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({super.key});

  List<Model> members = [
    Model(
        sound: "sounds/family_members/grand mother.wav",
        image: "assets/images/family_members/family_grandmother.png",
        jpName: "sofu",
        enName: "grandfather"),
    Model(
        sound: "sounds/family_members/grand father.wav",
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "sobo",
        enName: "grandmother"),
    Model(
        sound: "sounds/family_members/father.wav",
        image: "assets/images/family_members/family_father.png",
        jpName: "chichioya",
        enName: "father"),
    Model(
        sound: "sounds/family_members/mother.wav",
        image: "assets/images/family_members/family_mother.png",
        jpName: "hahaoya",
        enName: "mother"),
    Model(
        sound: "sounds/family_members/son.wav",
        image: "assets/images/family_members/family_son.png",
        jpName: "musuko",
        enName: "son"),
    Model(
        sound: "sounds/family_members/daughter.wav",
        image: "assets/images/family_members/family_daughter.png",
        jpName: "musume",
        enName: "daughter"),
    Model(
        sound: "sounds/family_members/older bother.wav",
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "nisan",
        enName: "older brother"),
    Model(
        sound: "sounds/family_members/older sister.wav",
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "ane",
        enName: "older sister"),
    Model(
        sound: "sounds/family_members/younger brohter.wav",
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "otouto",
        enName: "younger brother"),
    Model(
        sound: "sounds/family_members/younger sister.wav",
        image: "assets/images/family_members/family_younger_sister.png",
        jpName: "imouto",
        enName: "younger sister"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322b),
        title: const Text(
          "Family Members",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ItemWidget(
            model: members[index],
            colors: const Color(0xff558b37),
          );
        },
        itemCount: members.length,
      ),
    );
  }
}
