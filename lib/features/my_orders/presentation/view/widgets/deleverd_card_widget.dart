import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:flutter/material.dart';

class DeleverdCardWidget extends StatelessWidget {
  const DeleverdCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: context.appColors.offWhite,
        boxShadow: [
          BoxShadow(
            color: context.appColors.grey,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefaultButtonWidget(
            text: "Delivered",
            onPressed: () {},
            borderRadius: BorderRadius.circular(20),
            style: AppStyles.textStyle12White(
              context,
            ).copyWith(fontWeight: FontWeight.bold),
            height: 30,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text('Order Number :', style: AppStyles.textStyle12Grey(context)),
              const SizedBox(width: 5),
              Text(
                '774345234',
                style: AppStyles.textStyle14(context).copyWith(
                  color: context.appColors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            '15/1/2015',
            style: AppStyles.textStyle14(context).copyWith(
              color: context.appColors.teal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
