import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiral/core/utils/app_colors.dart';
import 'package:spiral/core/utils/app_text_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.height,
    this.width,
    required this.text,
    this.onTap,
    this.backgroundColor,
    this.textColor,
  });

  final double? height;
  final double? width;
  final String text;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 35.h,
      width: width ?? double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor ?? AppColors.primary,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.r),
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: AppTextStyles.title(
            color: textColor ?? AppColors.white,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
