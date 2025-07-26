import 'package:fasila/core/theme/customs_box_decoratino.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/planet_details/presentation/manager/alarm_time_cubit/alarm_time_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class AlarmContentWidget extends StatelessWidget {
  const AlarmContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height / 4.5,
        decoration: CustomsBoxDecoration().alarmBoxDecoration(context),
        child: BlocBuilder<AlarmTimeCubit, DateTime>(
          builder: (context, state) {
            return TimePickerSpinner(
              is24HourMode: false,
              normalTextStyle: AppStyles.textStyle16Black(context),
              highlightedTextStyle: AppStyles.textStyle24(context),
              spacing: 30,
              itemHeight: 30,
              isForce2Digits: true,
              time: state,
              onTimeChange: (time) {
                context.read<AlarmTimeCubit>().updateTime(time);
              },
            );
          },
        ),
      ),
    );
  }
}
