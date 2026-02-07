import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveltekpro_task_karan/features/home/view/home_screen.dart';
import '../controller/bottom_nav_controller.dart';

class BottomNavView extends GetView<BottomNavController> {
  const BottomNavView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final pages = [
      const HomeScreen(),
      const Center(child: Text("My Trips")),
      const Center(child: Text("Action")),
      const Center(child: Text("Wishlist")),
      const Center(child: Text("Account")),
    ];

    return Scaffold(
      backgroundColor: Colors.white,

      body: Obx(() {
        return pages[controller.selectedIndex.value];
      }),

      bottomNavigationBar: SizedBox(
        height: width * 0.22,

        child: Stack(
          alignment: Alignment.topCenter,
          children: [

            Container(
              margin: EdgeInsets.only(top: width * 0.08),

              padding: EdgeInsets.symmetric(
                horizontal: width * 0.08,
              ),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(28),
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 20,
                    offset: const Offset(0, -4),
                  ),
                ],
              ),

              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [

                  navItem(
                    icon: Icons.home,
                    title: "Home",
                    index: 0,
                  ),

                  navItem(
                    icon: Icons.confirmation_num_outlined,
                    title: "My Trips",
                    index: 1,
                  ),

                  SizedBox(width: width * 0.15),

                  navItem(
                    icon: Icons.favorite_border,
                    title: "Wishlist",
                    index: 3,
                  ),

                  navItem(
                    icon: Icons.person_outline,
                    title: "Account",
                    index: 4,
                  ),
                ],
              ),
            ),


            GestureDetector(
              onTap: () => controller.changeIndex(2),
              child: Container(
                height: width * 0.18,
                width: width * 0.18,

                decoration: BoxDecoration(
                  shape: BoxShape.circle),

                child: Center(
                  child: Image.asset(
                    "assets/images/centerButton.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget navItem({
    required IconData icon,
    required String title,
    required int index,
  }) {
    final isSelected =
        controller.selectedIndex.value == index;

    return GestureDetector(
      onTap: () => controller.changeIndex(index),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          Icon(
            icon,
            size: 26,
            color: isSelected
                ? const Color(0xFF6A5AE0)
                : Colors.grey,
          ),

          const SizedBox(height: 4),

          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: isSelected
                  ? const Color(0xFF6A5AE0)
                  : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}