import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:spiral/core/utils/app_colors.dart';
import 'package:spiral/core/utils/app_text_styles.dart';
import 'package:spiral/modules/auth/controller/auth_controller.dart';
import 'package:spiral/modules/auth/view/auth_success.dart';
import 'package:spiral/modules/auth/view/widgets/app_button.dart';
import 'package:spiral/modules/auth/view/widgets/auth_textfield.dart';
import 'package:spiral/modules/auth/view/widgets/blurred_background.dart';
import 'package:spiral/modules/auth/view/widgets/keypass_signin_button.dart';
import 'package:spiral/modules/auth/view/widgets/social_login_buttons.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();
  final AuthController authC = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 28.w,
                  right: 28.w,
                  top: 72.h,
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
                          'Login',
                          style: AppTextStyles.headline(
                            color: AppColors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'Email',
                          style: AppTextStyles.title(
                            color: AppColors.white,
                            fontSize: 11,
                          ),
                        ),
                        SizedBox(height: 7.h),
                        AuthTextField(
                          hint: 'John@gmail.com',
                          controller: emailC,
                        ),
                        SizedBox(height: 12.h),
                        Text(
                          'Password',
                          style: AppTextStyles.title(
                            color: AppColors.white,
                            fontSize: 11,
                          ),
                        ),
                        SizedBox(height: 7.h),
                        Obx(() {
                          final showPass = authC.showLoginPass.value;
                          return AuthTextField(
                            hint: 'Password',
                            controller: passwordC,
                            obSecure: !showPass,
                            trailing: GestureDetector(
                              onTap: () => authC.changeObSecureStatus(),
                              child: Padding(
                                padding: EdgeInsets.only(top: 7.h, right: 2.w),
                                child: Icon(
                                  showPass
                                      ? CupertinoIcons.eye
                                      : CupertinoIcons.eye_slash,
                                  size: 14.sp,
                                  color: AppColors.grey,
                                ),
                              ),
                            ),
                          );
                        }),
                        SizedBox(height: 20.h),
                        AppButton(
                          text: 'Sign in',
                          onTap: () {
                            Get.to(() => const AuthSuccess());
                          },
                        ),
                        SizedBox(height: 20.h),
                        Center(
                          child: Text(
                            'or choose',
                            style: AppTextStyles.subtitle(
                              color: AppColors.white,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        const KeypassSignInButton(),
                        SizedBox(height: 20.h),
                        const SocialLoginButtons(),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have an account yet? ',
                              style: AppTextStyles.subtitle(
                                color: AppColors.white,
                                fontSize: 11,
                              ),
                            ),
                            Text(
                              'Register for free',
                              style: AppTextStyles.subtitle(
                                color: AppColors.brightGreen,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 34.h),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
