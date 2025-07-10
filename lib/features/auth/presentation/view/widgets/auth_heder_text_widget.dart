import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class AuthHederTextWidget extends StatelessWidget {
  const AuthHederTextWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(title, style: AppStyles.textStyle24(context)),
          const SizedBox(height: 5),
          Text(
            subTitle,
            style: AppStyles.textStyle12Grey(
              context,
            ).copyWith(color: context.appColors.black),
          ),
        ],
      ),
    );
  }
}



//   