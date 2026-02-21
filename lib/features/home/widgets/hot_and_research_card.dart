import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HotAndResearchCard extends StatelessWidget {
  const HotAndResearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 219.w,
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
              "assets/images/hotel_Image.png", // use your image
              height: 150.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: const Color(0xffEEF0FF),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Text(
                    "Use Maximum Loyalty Points",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                      color: Color(0xff4757E4),
                    ),
                  ),
                ),

                SizedBox(height: 8.h),
                Text(
                  "Bali Seascape Beach Club-Rental",
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF101720),
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  "Candidasa, Indonesia",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF545C5C),
                  ),
                ),
                SizedBox(height: 3.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16.sp),
                    SizedBox(width: 4.w),
                    Text(
                      "4.5",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      "assets/images/loyalty.png",
                      width: 45.w,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
