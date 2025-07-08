import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class ProfileOptionWidget extends StatelessWidget {
  const ProfileOptionWidget({
    super.key,
    required this.title,
    required this.logo,
    required this.onTap,
  });

  final String title;
  final Widget logo;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        color: context.appColors.offWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Row(
            children: [
              logo,
              const SizedBox(width: 10),
              Text(
                title,
                style: AppStyles.textStyle16Teal(
                  context,
                ).copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_right,
                color: context.appColors.teal,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
