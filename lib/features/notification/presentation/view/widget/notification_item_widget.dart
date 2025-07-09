import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class NotificationItemWidget extends StatelessWidget {
  const NotificationItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: context.appColors.offWhite,
        borderRadius:const BorderRadius.all(Radius.circular(16)),
        border: Border.all(color: context.appColors.teal, width: 1),
        boxShadow: [
          BoxShadow(
            color: context.appColors.grey.withAlpha((0.4 * 255).toInt()),
            offset: const Offset(-2, 4),
            blurRadius: 6,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '7 October 2024',
                style: AppStyles.textStyle16Teal(
                  context,
                ).copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(
            'New Products in Store! Check out the best tools for better growth.',
            style: AppStyles.textStyle16Teal(context),
          ),
        ],
      ),
    );
  }
}
