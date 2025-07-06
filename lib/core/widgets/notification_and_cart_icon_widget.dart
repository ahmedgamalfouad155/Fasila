import 'package:fasila/core/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationAndCartIconsWidget extends StatelessWidget {
  const NotificationAndCartIconsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppImages.notificationIcon),
        const SizedBox(width: 8),
        SvgPicture.asset(AppImages.cartIcon),
        const SizedBox(width: 12),
      ],
    );
  }
}
