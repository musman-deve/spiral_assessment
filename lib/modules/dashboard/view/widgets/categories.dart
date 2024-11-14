import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiral/core/utils/app_text_styles.dart';

class Categories extends StatelessWidget {
  Categories({
    super.key,
  });

  final List categories = [
    {
      'name': 'Meeting',
      'dark': const Color(0xffF59E0B),
      'light': const Color(0xffFFFBEB),
    },
    {
      'name': 'Hangout',
      'dark': const Color(0xff701A75),
      'light': const Color(0xffFDF4FF),
    },
    {
      'name': 'Cooking',
      'dark': const Color(0xffDC2626),
      'light': const Color(0xffFEF2F2),
    },
    {
      'name': 'Other',
      'dark': const Color(0xff4A4A4A),
      'light': const Color(0xffF6F6F6),
    },
    {
      'name': 'Weekend',
      'dark': const Color(0xff1A7529),
      'light': const Color(0xffF0FFF5),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Category',
            style: AppTextStyles.title(fontSize: 16),
          ),
          SizedBox(height: 16.h),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            padding: EdgeInsets.zero,
            childAspectRatio: 3.5,
            mainAxisSpacing: 8.sp,
            crossAxisSpacing: 12.sp,
            physics: const NeverScrollableScrollPhysics(),
            children: List.generate(
              categories.length,
              (index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  decoration: BoxDecoration(
                    color: categories[index]['light'],
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 8.sp,
                        backgroundColor: categories[index]['dark'],
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        categories[index]['name'],
                        style: AppTextStyles.subtitle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
