
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Date: ', style: AppStyles.textStyle16Teal(context)),
        Text('Feb 2025', style: AppStyles.textStyle14(context)),
        
      ],
    );
  }
}
