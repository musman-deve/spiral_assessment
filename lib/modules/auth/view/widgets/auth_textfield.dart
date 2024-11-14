import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spiral/core/utils/app_colors.dart';
import 'package:spiral/core/utils/app_text_styles.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.hint,
    required this.controller,
    this.obSecure,
    this.trailing,
    this.focusNode,
  });

  final String hint;
  final TextEditingController controller;
  final bool? obSecure;
  final Widget? trailing;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(
          color: AppColors.grey,
          width: 0.7.sp,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4.sp,
            offset: Offset(0, 4.sp),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: TextField(
              focusNode: focusNode,
              cursorHeight: 18.h,
              textAlignVertical: TextAlignVertical.center,
              controller: controller,
              obscureText: obSecure ?? false,
              decoration: InputDecoration(
                isDense: true,
                hintText: hint,
                hintStyle: AppTextStyles.body(
                  color: AppColors.grey,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 2.h,
                  left: 13.w,
                  right: 13.w,
                ),
              ),
            ),
          ),
          Visibility(
            visible: trailing != null,
            child: Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: trailing,
            ),
          ),
        ],
      ),
    );
  }
}
