import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:spiral/core/utils/app_colors.dart';
import 'package:spiral/core/utils/app_text_styles.dart';
import 'package:spiral/modules/auth/view/check_biometrics.dart';

class KeypassSignInButton extends StatelessWidget {
  const KeypassSignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => CheckBiometrics());
      },
      child: Container(
        height: 35.h,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(6.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/biometrics_icon.svg',
            ),
            SizedBox(width: 10.w),
            Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: Text(
                'Sign in with Passkey',
                style: AppTextStyles.title(
                  color: AppColors.primary,
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
