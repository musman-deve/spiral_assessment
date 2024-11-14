import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spiral/core/utils/app_colors.dart';
import 'package:spiral/core/utils/app_text_styles.dart';

class ProfileTextfield extends StatelessWidget {
  const ProfileTextfield({
    super.key,
    this.height,
    this.icon,
    this.hint,
    this.controller,
    this.inputType,
    this.maxLength,
    this.maxLines,
    this.obscure,
    this.leading,
    this.trailing,
    this.margin,
    this.contentPadding,
    this.textAlign,
    this.verticalAlign,
    this.textStyle,
    this.cursorColor,
    this.focusNode,
    this.onChanged,
    this.enabled,
    this.expandable,
    this.onTap,
    this.autoFocus,
  });

  final double? height;
  final String? icon;
  final String? hint;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final int? maxLength;
  final int? maxLines;
  final bool? obscure;
  final Widget? leading;
  final Widget? trailing;
  final EdgeInsets? margin;
  final EdgeInsets? contentPadding;
  final TextAlign? textAlign;
  final Alignment? verticalAlign;
  final TextStyle? textStyle;
  final Color? cursorColor;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final bool? enabled;
  final bool? expandable;
  final bool? autoFocus;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: verticalAlign,
        height: maxLines == null ? null : height ?? 54.h,
        margin: margin,
        padding: EdgeInsets.only(left: icon != null ? 16.w : 14.w, right: 12.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(color: const Color(0xffF1ECEC), width: 1),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          children: [
            icon != null
                ? SvgPicture.asset(icon!)
                : leading ?? const SizedBox(),
            SizedBox(width: icon != null ? 14.w : 0),
            Expanded(
              child: TextField(
                onTapOutside: (event) {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                controller: controller,
                focusNode: focusNode,
                autofocus: autoFocus ?? false,
                enabled: enabled,
                keyboardType: inputType ?? TextInputType.text,
                onChanged: onChanged,
                obscureText: obscure ?? false,
                cursorHeight: 20.h,
                cursorColor: cursorColor ?? AppColors.primary,
                style: textStyle ??
                    AppTextStyles.subtitle(
                      fontSize: 14,
                    ),
                maxLength: maxLength,
                maxLines: expandable == true ? null : 1,
                textAlign: textAlign ?? TextAlign.start,
                decoration: InputDecoration(
                  hintText: hint,
                  hintStyle: AppTextStyles.subtitle(
                    color: AppColors.grey,
                    fontSize: 14,
                  ),
                  border: InputBorder.none,
                  contentPadding: contentPadding,
                  counterText: '',
                ),
              ),
            ),
            trailing ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
