import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';

class CategoryCard extends StatelessWidget {

  final int index;
  final int selectedIndex;

  const CategoryCard({
    super.key,
    required this.index,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {

    final controller = Get.find<HomeController>();
    final width = MediaQuery.of(context).size.width;

    final isSelected = index == selectedIndex;

    return GestureDetector(
      onTap: () => controller.changeCategory(index),

      child: Container(
        margin: EdgeInsets.only(right: width * 0.04),
        padding: EdgeInsets.all(width * 0.03),

        decoration: BoxDecoration(
          color: isSelected
              ? Colors.blue
              : Colors.blue.shade50,

          borderRadius:
          BorderRadius.circular(width * 0.04),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              Icons.place,
              color: isSelected
                  ? Colors.white
                  : Colors.blue,
            ),

            SizedBox(height: width * 0.02),

            Text(
              "Place $index",
              style: TextStyle(
                color: isSelected
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}