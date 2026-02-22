import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlashDealsSection extends StatelessWidget {
  const FlashDealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        image: DecorationImage(
          image: AssetImage("assets/images/backgroundImage.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          /// Dark overlay
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.65),
                  Colors.black.withOpacity(0.85),
                ],
              ),
            ),
          ),

          /// Content
          Padding(
            padding: EdgeInsets.only(left: 28.w, top: 31.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Flash Deals',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 6.h),
                SizedBox(
                  width: 246.w,
                  child: Text(
                    'Every day, we bring you 3 world-class unbeatable hotel offers!',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                SizedBox(
                  height: 370.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    separatorBuilder: (_, __) => SizedBox(width: 16.w),
                    itemBuilder: (_, index) {
                      return dealCard();
                    },
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

Widget dealCard() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(16.r),
        child: Image.asset(
          "assets/images/flashDeal.png",
          height: 147.h,
          width: 246.w,
          fit: BoxFit.cover,
        ),
      ),

      SizedBox(height: 12.h),

      Container(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
        decoration: BoxDecoration(
          color: Color(0xff4757E4),
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Text(
          'Deals from 07/09/2025 to 07/31/2025',
          style: TextStyle(
            fontSize: 10.5.sp,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      SizedBox(height: 10.h),

      Text(
        "Millennium Plaza Downtown\nHotel, Dubai",
        style: TextStyle(
          color: Colors.white,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
      ),

      SizedBox(height: 6.h),

      Text(
        "Dubai, United Arab Emirates",
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
      ),

      SizedBox(height: 6.h),

      Row(
        children: [
          Icon(Icons.star, color: Colors.amber, size: 16.sp),
          SizedBox(width: 4.w),
          Text(
            "4.5",
            style: TextStyle(
              fontSize: 10.5.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
      SizedBox(height: 16.h,),
      Container(
        height: 30.h,
         padding: EdgeInsets.symmetric(horizontal: 8.45.w, vertical: 7.5.h),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xff13C2C2), Color(0xff4757E4)],
          ),
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Text(
          "Book now!",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
          ),
        ),
      ),
    ],
  );
}
