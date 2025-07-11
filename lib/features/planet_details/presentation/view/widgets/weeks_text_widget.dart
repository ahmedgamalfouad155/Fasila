import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/weeks_snakbar_widget.dart';
import 'package:flutter/material.dart';

class WeeksWidget extends StatelessWidget {
  const WeeksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CustomBigSnackBar.show(
          context: context,
         
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '(First Week)',
            style: AppStyles.textStyle16Teal(
              context,
            ).copyWith(fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: context.appColors.teal,
            size: 20,
          ),
        ],
      ),
    );
  }
}
