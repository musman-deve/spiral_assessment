import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spiral/core/utils/app_colors.dart';
import 'package:spiral/core/utils/app_text_styles.dart';
import 'package:spiral/modules/dashboard/view/edit_profile.dart';

class WelcomeBar extends StatelessWidget {
  const WelcomeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning,',
                  style: AppTextStyles.subtitle(
                    fontSize: 24,
                  ),
                ),
                Text(
                  'Jane',
                  style: AppTextStyles.title(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => EditProfile());
            },
            child: Container(
              height: 50.sp,
              width: 50.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                gradient: AppColors.profileGradiant,
              ),
              child: Container(
                margin: EdgeInsets.all(2.sp),
                padding: EdgeInsets.all(3.sp),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.r),
                  color: AppColors.white,
                ),
                child: Image.asset('assets/dummy/user_image.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
