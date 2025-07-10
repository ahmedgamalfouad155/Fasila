import 'package:fasila/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoContainerWidget extends StatelessWidget {
  const LogoContainerWidget({
    super.key,
    required this.logo,
    this.width = 60,
    this.height = 50,
    this.backgroundColor,
    this.borderRadius = 5,
    this.onTap,
  });

  final String logo;
  final double width;
  final double height;
  final Color? backgroundColor;
  final double borderRadius;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width.w,
        height: height.h,
        decoration: BoxDecoration(
          color: backgroundColor ?? context.appColors.offWhite,
          borderRadius: BorderRadius.circular(borderRadius.r),
        ),
        child: Center(
          child: SvgPicture.asset(
            logo,
            errorBuilder: (context, error, stackTrace) {
              return Icon(
                Icons.error,
                color: context.appColors.white,
                size: 24.sp,
              );
            },
          ),
        ),
      ),
    );
  }
}
