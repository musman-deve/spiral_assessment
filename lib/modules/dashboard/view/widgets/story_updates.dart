import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spiral/core/utils/app_colors.dart';
import 'package:spiral/core/utils/app_text_styles.dart';

class StoryUpdates extends StatelessWidget {
  StoryUpdates({
    super.key,
  });

  final List images = [
    'assets/dummy/my_status.png',
    'assets/dummy/status_1.png',
    'assets/dummy/status_2.png',
    'assets/dummy/status_3.png',
    'assets/dummy/status_4.png',
  ];
  final List names = [
    'My Story',
    'Selena',
    'Clara',
    'Fabian',
    'George',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        children: List.generate(
          names.length,
          (index) {
            return Container(
              width: 64.sp,
              margin: EdgeInsets.only(
                right: (index + 1) == names.length ? 0 : 20.w,
              ),
              child: Column(
                children: [
                  index == 0
                      ? Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            SizedBox(
                              height: 64.sp,
                              width: 64.sp,
                              child: Image.asset(
                                images[index],
                              ),
                            ),
                            Container(
                              height: 18.sp,
                              width: 18.sp,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(3.sp),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.blue,
                                border: Border.all(
                                  color: AppColors.white,
                                  width: 2.sp,
                                ),
                              ),
                              child: SvgPicture.asset(
                                'assets/icons/add_icon.svg',
                              ),
                            ),
                          ],
                        )
                      : Container(
                          height: 64.sp,
                          width: 64.sp,
                          padding: EdgeInsets.all(3.sp),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.white,
                            border: Border.all(
                              color: AppColors.blue,
                              width: 2.sp,
                            ),
                          ),
                          child: Image.asset(
                            images[index],
                          ),
                        ),
                  SizedBox(height: 6.h),
                  Text(
                    names[index],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.body(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
