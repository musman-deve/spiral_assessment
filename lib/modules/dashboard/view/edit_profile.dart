import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:spiral/core/utils/app_colors.dart';
import 'package:spiral/core/utils/app_text_styles.dart';
import 'package:spiral/modules/dashboard/view/widgets/profile_textfield.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        shadowColor: Colors.transparent,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: SvgPicture.asset('assets/icons/arrow_back.svg'),
        ),
        title: Text(
          'Edit Profile',
          style: AppTextStyles.title(fontSize: 18),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              Center(
                child: Container(
                  height: 140.h,
                  width: 140.w,
                  margin: EdgeInsets.only(left: 16.w),
                  child: Stack(
                    alignment: AlignmentDirectional.topStart,
                    children: [
                      Container(
                        height: 124.sp,
                        width: 124.sp,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: AppColors.profileGradiant,
                        ),
                        child: Container(
                          margin: EdgeInsets.all(1.5.sp),
                          padding: EdgeInsets.all(7.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19.r),
                            color: AppColors.white,
                          ),
                          child: Image.asset(
                            'assets/dummy/user_image_2.png',
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 8.sp,
                        right: 10.sp,
                        child: CircleAvatar(
                          radius: 14.r,
                          backgroundColor: const Color(0xffEE8924),
                          child: SvgPicture.asset('assets/icons/edit_icon.svg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 13.h),
              Center(
                child: Text(
                  'Jane Doe',
                  style: AppTextStyles.title(
                    fontSize: 19,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Center(
                child: Text(
                  'Developer',
                  style: AppTextStyles.body(
                    fontSize: 14,
                    color: AppColors.grey,
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              Text(
                'Email',
                style: AppTextStyles.title(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 12.h),
              ProfileTextfield(
                hint: 'jane@gmail.com',
                contentPadding: EdgeInsets.only(bottom: 2.sp),
                icon: 'assets/icons/mail_icon.svg',
                inputType: TextInputType.emailAddress,
              ),
              SizedBox(height: 24.h),
              Text(
                'Phone Number',
                style: AppTextStyles.title(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 12.h),
              ProfileTextfield(
                hint: '+254182729202',
                contentPadding: EdgeInsets.only(bottom: 2.sp),
                icon: 'assets/icons/phone_icon.svg',
                inputType: TextInputType.number,
              ),
              SizedBox(height: 24.h),
              Text(
                'Career',
                style: AppTextStyles.title(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 12.h),
              ProfileTextfield(
                hint: 'Developer',
                contentPadding: EdgeInsets.only(bottom: 2.sp),
              ),
              SizedBox(height: 24.h),
              Text(
                'Address',
                style: AppTextStyles.title(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 12.h),
              ProfileTextfield(
                hint: 'Nairobi',
                contentPadding: EdgeInsets.only(bottom: 2.sp),
                icon: 'assets/icons/location_icon.svg',
              ),
              SizedBox(height: 28.h),
              Container(
                height: 51.h,
                width: double.maxFinite,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  gradient: AppColors.editProfileGradient,
                ),
                child: Text(
                  'Save Changes',
                  style: AppTextStyles.title(
                    fontSize: 15,
                    color: AppColors.white,
                  ),
                ),
              ),
              SizedBox(height: 28.h),
            ],
          ),
        ),
      ),
    );
  }
}
