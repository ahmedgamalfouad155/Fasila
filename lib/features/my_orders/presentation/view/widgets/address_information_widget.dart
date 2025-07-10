import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class AddressInformationWidget extends StatelessWidget {
  const AddressInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsetsGeometry.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
          Text(
            "address information",
            style: AppStyles.textStyle16Teal(context),
          ),
          const SizedBox(height: 5),
          Text(
            "Ahmed Maher Street - Mansoura",
            style: AppStyles.textStyle14(
              context,
            ).copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 3),
          Text("01078561475", style: AppStyles.textStyle14(context)),
        ],
      ),
    );
  }
}
