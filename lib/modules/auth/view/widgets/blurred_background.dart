import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiral/core/utils/app_colors.dart';

class BlurredContainer extends StatelessWidget {
  final Widget child;

  const BlurredContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.r),
      child: ClipRect(
        clipBehavior: Clip.hardEdge,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 9.sp, sigmaY: 9.sp),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.purpleBlue.withOpacity(0.28),
              border: Border.all(
                width: 1.7.sp,
                color: AppColors.purpleBlue.withOpacity(0.28),
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
