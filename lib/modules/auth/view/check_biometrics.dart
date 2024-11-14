import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:spiral/core/utils/app_colors.dart';
import 'package:spiral/core/utils/app_text_styles.dart';
import 'package:spiral/modules/auth/view/auth_success.dart';
import 'package:spiral/modules/auth/view/widgets/app_button.dart';
import 'package:spiral/modules/auth/view/widgets/blurred_background.dart';

class CheckBiometrics extends StatelessWidget {
  const CheckBiometrics({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg_image_2.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 500.h,
            margin: EdgeInsets.only(
              left: 28.w,
              right: 28.w,
              top: screenHeight * 0.24,
            ),
            child: BlurredContainer(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 34.h),
                    Center(
                      child: Text(
                        'Spiral',
                        style: AppTextStyles.headline(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 34.h),
                    Text(
                      'Passkey Sign in',
                      style: AppTextStyles.headline(
                        color: AppColors.white,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      'Place your finger on the sensor to continue',
                      style: AppTextStyles.subtitle(
                        color: AppColors.white,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height: 38.h),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const AuthSuccess());
                      },
                      child: SvgPicture.asset(
                        'assets/images/checking_biometrics.svg',
                      ),
                    ),
                    SizedBox(height: 38.h),
                    AppButton(
                      text: 'Cancel',
                      onTap: () => Get.back(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
