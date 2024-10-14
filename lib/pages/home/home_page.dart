import 'package:flutter/material.dart';
import 'package:language_learning/pages/colors_page.dart';
import 'package:language_learning/pages/numbers_page.dart';
import 'package:language_learning/pages/phrases_page.dart';

import '../../widgets/category_widget.dart';
import '../family_members_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322b),
        title: const Text(
          "Toku",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            child: CategoryWidget(
              text: "Numbers",
              color: const Color(0xffEf9235),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMembersPage();
              }));
            },
            child: CategoryWidget(
              text: "Family Members",
              color: const Color(0xff558b37),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));
            },
            child: CategoryWidget(
              text: "Colors",
              color: const Color(0xff79359f),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
            child: CategoryWidget(
              text: "Phrases",
              color: const Color(0xff50adc7),
            ),
          ),
        ],
      ),
    );
  }
}
