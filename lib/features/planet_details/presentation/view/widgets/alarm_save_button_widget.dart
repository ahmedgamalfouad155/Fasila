import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/planet_details/data/constant_planet_details.dart';
import 'package:fasila/features/planet_details/data/models/alarm_model.dart';
import 'package:fasila/features/planet_details/presentation/manager/alarm_planet_cubit/alarm_planet_cubit.dart';
import 'package:fasila/features/planet_details/presentation/manager/weeks_togel_cubit/days_toget_cubit.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fasila/core/helper/notification_scheduler.dart';
import 'package:fasila/core/widgets/custom_snak_bar.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/planet_details/presentation/manager/alarm_time_cubit/alarm_time_cubit.dart';
import 'package:fasila/core/helper/notification_initializer.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class SaveButtonAlarmWidget extends StatelessWidget {
  const SaveButtonAlarmWidget({super.key, required this.planetModel});
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) {
    final alarmPlanetCubit = context.read<AlarmPlanetCubit>();
    return BlocBuilder<AlarmPlanetCubit, AlarmPlanetState>(
      bloc: alarmPlanetCubit,
      builder: (context, state) {
        if (state is AddingAlarmPlanetLoadingState) {
          return const CircularProgressIndicator();
        } else if (state is AddingAlarmPlanetSuccessState ||
            state is AlarmPlanetInitial ||
            state is GettingAlarmPlanetSuccessState) {
          return DefaultButtonWidget(
            text: "Save",
            onPressed: () async {
              final selectedTime = context.read<AlarmTimeCubit>().state;
              final selectedDayIndex = context.read<DaysTogetCubit>().state;

              final now = DateTime.now();
              final List<int> weekdayMapping = [6, 7, 1, 4, 3, 2, 5];
              final selectedWeekday = weekdayMapping[selectedDayIndex];

              int daysToAdd = (selectedWeekday - now.weekday + 7) % 7;
              DateTime targetDate = DateTime(
                now.year,
                now.month,
                now.day + daysToAdd,
                selectedTime.hour,
                selectedTime.minute,
              );

              if (targetDate.isBefore(now)) {
                targetDate = targetDate.add(const Duration(days: 7));
              }

              alarmPlanetCubit.addLableAlarm(
                AlarmModel(
                  id: DateTime.now().toString(),
                  title: ConstantPlanetDetails()
                      .options[context.read<FilterCubit>().state],
                  icon: ConstantPlanetDetails()
                      .images[context.read<FilterCubit>().state],
                  hour: selectedTime.hour,
                  minute: selectedTime.minute,
                  day: ConstantPlanetDetails().days[selectedDayIndex],
                  isActive: true,
                ),
                planetModel.id,
              );

              Navigator.pop(context);
            },

            width: MediaQuery.of(context).size.width / 2.3,
            borderRadius: BorderRadius.circular(10),
          );
        } else if (state is AddingAlarmPlanetFailedState) {
          return Text(state.error);
        } else {
          return Text("error");
        }
      },
    );
  }
}
