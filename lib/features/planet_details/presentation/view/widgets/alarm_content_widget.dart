import 'package:flutter/cupertino.dart';

import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class AlarmContentWidget extends StatelessWidget {
  const AlarmContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height / 4.5,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: context.appColors.white,
          border: Border.all(color: context.appColors.teal, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TimePickerSpinner(
          is24HourMode: false,
          normalTextStyle: AppStyles.textStyle16Black(context),
          highlightedTextStyle: AppStyles.textStyle24(context),
          spacing: 30,
          itemHeight: 30,
          isForce2Digits: true,
        ),
      ),
    );
  }
} 