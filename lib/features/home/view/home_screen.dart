import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:traveltekpro_task_karan/features/home/widgets/category_card.dart';
import 'package:traveltekpro_task_karan/features/home/widgets/hot_and_research_card.dart';
import 'package:traveltekpro_task_karan/features/home/widgets/info_tile.dart';
import 'package:traveltekpro_task_karan/features/home/widgets/recent_search_card.dart';
import '../controller/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/header.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Transform.translate(
                    offset: const Offset(0, 0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(14.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30.r),
                          bottomRight: Radius.circular(30.r),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.21),
                            blurRadius: 20.r,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 84.h,
                            width: double.infinity,
                            child: Obx(
                              () => ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  CategoryItem(
                                    title: "Hotels",
                                    iconPath: "assets/icons/hotel.svg",
                                    isSelected:
                                        controller.selectedCategory.value == 0,
                                    onTap: () => controller.changeCategory(0),
                                  ),
                                  SizedBox(width: 10.w),
                                  CategoryItem(
                                    title: "Plane",
                                    iconPath: "assets/icons/plane.svg",
                                    isSelected:
                                        controller.selectedCategory.value == 1,
                                    onTap: () => controller.changeCategory(1),
                                  ),
                                  SizedBox(width: 10.w),
                                  CategoryItem(
                                    title: "Life\nExperience",
                                    iconPath: "assets/icons/map.svg",
                                    isSelected:
                                        controller.selectedCategory.value == 2,
                                    onTap: () => controller.changeCategory(2),
                                  ),
                                  SizedBox(width: 10.w),
                                  CategoryItem(
                                    title: "Cars",
                                    iconPath: "assets/icons/cars.svg",
                                    isSelected:
                                        controller.selectedCategory.value == 3,
                                    onTap: () => controller.changeCategory(3),
                                  ),
                                  SizedBox(width: 10.w),
                                  CategoryItem(
                                    title: "Cruises",
                                    iconPath: "assets/icons/shipe.svg",
                                    isSelected:
                                        controller.selectedCategory.value == 4,
                                    onTap: () => controller.changeCategory(4),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          InfoTile(
                            icon: Icons.location_on_outlined,
                            title: 'Destination',
                            valur: "Dubai,United Arab Emirates",
                            textColors: Colors.grey.shade600,
                          ),
                          SizedBox(height: 10.h),
                          InfoTile(
                            icon: Icons.calendar_month_outlined,
                            title: 'Date',
                            valur: "1 July - 3 July",
                          ),
                          SizedBox(height: 10.h),
                          InfoTile(
                            icon: Icons.person_outline,
                            title: 'Travellers',
                            valur: "2 Travellers - 1 room",
                          ),
                          SizedBox(height: 10.h),
                          Container(
                            padding: EdgeInsets.all(12.w),
                            height: 56.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xff13C2C2), Color(0xff5E29CD)],
                              ),
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                            child: Center(
                              child: Text(
                                'Search',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 8.h),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 24.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      'Recent Search',
                      style: TextStyle(
                        color: Color(0xFF101720),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: SizedBox(
                      height: 108.h,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          RecentSearchCard(
                            type: 'Hotels',
                            city: 'Dubai',
                            date: '12 Aug - 25 Aug',
                            detail: '2 Room - 2 travellers',
                          ),
                          RecentSearchCard(
                            type: 'Dubai',
                            city: 'Dubai..to Delhi (DEL)',
                            date: '12 Aug - 25 Aug',
                            detail: '2 Room - 2 travellers',
                          ),
                          RecentSearchCard(
                            type: 'Hotels',
                            city: 'Dubai',
                            date: '12 Aug - 25 Aug',
                            detail: '2 Room - 2 travellers',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hot and Trending',
                          style: TextStyle(
                            color: Color(0xFF101720),
                            fontWeight: FontWeight.w700,
                            fontSize: 20.sp,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'We bring exclusive offers for The Club members, daily.',
                          style: TextStyle(
                            color: Color(0xFF4F5858),
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Obx(
                      () => Row(
                        children: [
                          GestureDetector(
                            onTap: () => controller.changeHotTab(0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "The Club Select",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: controller.selectedHotTab.value == 0
                                        ? const Color(0xff4757E4)
                                        : Colors.black54,
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                if (controller.selectedHotTab.value == 0)
                                  Container(
                                    height: 3.h,
                                    width: 120.w,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff4757E4),
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          SizedBox(width: 24.w),
                          GestureDetector(
                            onTap: () => controller.changeHotTab(1),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "The Club Hotel",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: controller.selectedHotTab.value == 1
                                        ? const Color(0xff4757E4)
                                        : Colors.black54,
                                  ),
                                ),
                                SizedBox(height: 6.h),
                                if (controller.selectedHotTab.value == 1)
                                  Container(
                                    height: 3.h,
                                    width: 120.w,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff4757E4),
                                      borderRadius: BorderRadius.circular(4.r),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 350.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 16.h,
                      ),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          HotAndResearchCard(),
                          SizedBox(width: 16.w),
                          HotAndResearchCard(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
