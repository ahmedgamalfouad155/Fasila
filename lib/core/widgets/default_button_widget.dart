import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class DefaultButtonWidget extends StatelessWidget {
  DefaultButtonWidget({
    super.key,
    this.bacgrouncColor,
    this.textColor,
    this.borderRadius,
    this.width,
    this.height,
    required this.text,
    required this.onPressed,
    this.icon,
  });
  final void Function()? onPressed;
  Color? bacgrouncColor;
  Color? textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? width, height;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 40.h,
      width: width ?? MediaQuery.of(context).size.width.w,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: bacgrouncColor ?? context.appColors.teal,
          side: BorderSide(color: context.appColors.teal),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ?icon,
            const SizedBox(width: 5),
            Text(
              text,
              style: AppStyles.textStyle16Black(context).copyWith(
                fontWeight: FontWeight.w700,
                color: textColor ?? context.appColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
