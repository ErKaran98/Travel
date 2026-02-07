import 'package:flutter/material.dart';

Widget popularCard(BuildContext context) {

  final width = MediaQuery.of(context).size.width;
  final height = MediaQuery.of(context).size.height;

  return Container(
    margin: EdgeInsets.only(bottom: height * 0.02),
    height: height * 0.22,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(width * 0.05),
      image: const DecorationImage(
        image: AssetImage(
            "assets/images/sample.jpg"),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      padding: EdgeInsets.all(width * 0.04),
      alignment: Alignment.bottomLeft,
      child: Text(
        "Maldives",
        style: TextStyle(
          color: Colors.white,
          fontSize: width * 0.05,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}