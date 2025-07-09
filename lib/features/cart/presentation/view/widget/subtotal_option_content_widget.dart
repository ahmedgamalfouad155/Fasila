
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class SubtotalOptionContentWidget extends StatelessWidget {
  const SubtotalOptionContentWidget({
    super.key,
    required this.title,
    required this.price,
  });
  final String title, price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.textStyle16Black(
            context,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          price,
          style: AppStyles.textStyle16Teal(
            context,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
