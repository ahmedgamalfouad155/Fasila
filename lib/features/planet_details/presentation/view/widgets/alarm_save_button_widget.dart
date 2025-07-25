import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:fasila/core/helper/notification_scheduler.dart';
import 'package:fasila/core/widgets/custom_snak_bar.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/planet_details/presentation/manager/alarm_cubit/alarm_time_cubit.dart';
import 'package:fasila/core/helper/notification_initializer.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class SaveButtonAlarmWidget extends StatelessWidget {
  const SaveButtonAlarmWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultButtonWidget(
      text: "Save",
      onPressed: () async {
        final selectedTime = context.read<AlarmTimeCubit>().state;
        final now = DateTime.now();

        DateTime scheduledTime = DateTime(
          now.year,
          now.month,
          now.day,
          selectedTime.hour,
          selectedTime.minute,
        );

        if (scheduledTime.isBefore(now)) {
        }
        NotificationHelper.scheduleAlarmNotification(scheduledTime);
      },
      width: MediaQuery.of(context).size.width / 2.3,
      borderRadius: BorderRadius.circular(10),
    );
  }
}
