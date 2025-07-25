import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/planet_details/presentation/manager/alarm_cubit/alarm_time_cubit.dart';
import 'package:fasila/features/planet_details/presentation/manager/weeks_togel_cubit/days_toget_cubit.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/alarm_content_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/alarm_save_button_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/alarm_slider_widger.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/choose_lable_alarm_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/delete_alarm_text_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/switch_alarm_card_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/days_togel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<dynamic> alarmShowDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => Dialog(
      backgroundColor: context.appColors.offWhite,
      insetPadding: EdgeInsets.all(10),

      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: BlocProvider(
            create: (context) => AlarmTimeCubit(),
            child: Builder(
              builder: (context) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AlarmContentWidget(),
                    const SizedBox(height: 10),
                    Text(
                      'Repeat',
                      style: AppStyles.textStyle16Teal(
                        context,
                      ).copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    BlocProvider(
                      create: (context) => DaysTogetCubit(),
                      child: DaysTogelWidget(),
                    ),
                    const SizedBox(height: 10),
                    ChooseLableAlarmWidget(),
                    SwitchAlarmCardWidget(
                      discribtion: "Vibrate when alarm Sound",
                    ),
                    const SizedBox(height: 10),
                    SwitchAlarmCardWidget(discribtion: "Delet after goes off"),
                    const SizedBox(height: 10),
                    Text(
                      'Alarm volume',
                      style: AppStyles.textStyle16Teal(
                        context,
                      ).copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    AlarmSliderWidget(),
                    const SizedBox(height: 10),
                    DeleteAlarmTextWidget(),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SaveButtonAlarmWidget(),
                        const SizedBox(width: 5),
                        DefaultButtonWidget(
                          text: "Cancel",
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          borderRadius: BorderRadius.circular(10),
                          width: MediaQuery.of(context).size.width / 2.3,
                          bacgrouncColor: context.appColors.white,
                          textColor: context.appColors.teal,
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    ),
  );
}
