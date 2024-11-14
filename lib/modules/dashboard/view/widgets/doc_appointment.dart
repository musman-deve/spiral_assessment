import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spiral/core/utils/app_colors.dart';
import 'package:spiral/core/utils/app_text_styles.dart';

class DocAppointment extends StatelessWidget {
  const DocAppointment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      width: double.maxFinite,
      padding: EdgeInsets.all(20.sp),
      margin: EdgeInsets.symmetric(horizontal: 14.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.brightBlue,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 48.sp,
                width: 48.sp,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white,
                ),
                child: Image.asset(
                  'assets/dummy/doc_image.png',
                ),
              ),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. a Syahir',
                    style: AppTextStyles.title(
                      fontSize: 14,
                      color: AppColors.white,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'General Doctor',
                    style: AppTextStyles.body(
                      fontSize: 13,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              SvgPicture.asset('assets/icons/chevron_right.svg'),
            ],
          ),
          Container(
            height: 1.sp,
            margin: EdgeInsets.symmetric(vertical: 16.h),
            color: AppColors.white.withOpacity(0.15),
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/calendar.svg'),
                    SizedBox(width: 8.w),
                    Text(
                      'Sunday, 12 June',
                      style: AppTextStyles.subtitle(
                        fontSize: 11,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/clock.svg'),
                    SizedBox(width: 8.w),
                    Text(
                      '11:00 - 12:00 AM',
                      style: AppTextStyles.subtitle(
                        fontSize: 11,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
