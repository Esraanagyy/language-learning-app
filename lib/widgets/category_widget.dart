import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({required this.text, required this.color});
  String text;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24),
      alignment: Alignment.centerLeft,
      height: 70,
      width: double.infinity,
      color: color,
      child: Text(
        text,
        style: const TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}
