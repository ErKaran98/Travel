import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LifeExperienceCard extends StatelessWidget {
  const LifeExperienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290.w,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xffDFE0E4)),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 15),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
            child: Image.asset(
              "assets/images/cruise_ship.png",
              height: 181.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mediterranean Cruise Experience",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF101720),
                  ),
                ),
                SizedBox(height: 11.h),
                SizedBox(
                  width: 162.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset("assets/icons/clock.svg",
                      height: 15.h,
                        width: 15.w,
                      ),
                      SizedBox(width: 6.w,),
                      Flexible(child: Text('Starts 2nd Nov 2025 8 Days 7 Nights')),
                    ],
                  ),
                ),
                SizedBox(height: 16.h,),
                Text("\$699",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF053860)
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
