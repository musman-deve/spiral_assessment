import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:spiral/core/utils/app_colors.dart';
import 'package:spiral/core/utils/app_text_styles.dart';
import 'package:spiral/modules/auth/view/widgets/blurred_background.dart';
import 'package:spiral/modules/dashboard/view/dashboard.dart';

class AuthSuccess extends StatefulWidget {
  const AuthSuccess({super.key});

  @override
  State<AuthSuccess> createState() => _AuthSuccessState();
}

class _AuthSuccessState extends State<AuthSuccess> {
  void autoNavigate() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(() => Dashboard());
  }

  @override
  void initState() {
    super.initState();
    autoNavigate();
  }

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
                  'assets/images/bg_image.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 400.h,
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
                    SizedBox(height: 10.h),
                    Container(
                      height: 93.sp,
                      width: 93.sp,
                      margin: EdgeInsets.symmetric(vertical: 24.h),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: AppColors.bioSuccessGradiant,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.brightGreen.withOpacity(0.65),
                            blurRadius: 20.sp,
                            spreadRadius: 5.sp,
                          ),
                        ],
                      ),
                      child: SvgPicture.asset('assets/icons/check_icon.svg'),
                    ),
                    Text(
                      'Authentication Successful',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.title(
                        color: AppColors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Redirecting you to your account',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.subtitle(
                        color: AppColors.white,
                        fontSize: 10,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(height: 20.h),
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
