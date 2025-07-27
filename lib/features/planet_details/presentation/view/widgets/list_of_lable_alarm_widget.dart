import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/helper/notification_scheduler.dart';
import 'package:fasila/features/planet_details/presentation/manager/alarm_planet_cubit/alarm_planet_cubit.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/lable_alarm_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ListOfLableAlarmWidget extends StatelessWidget {
  const ListOfLableAlarmWidget({super.key, required this.planetId});
  final String planetId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlarmPlanetCubit, AlarmPlanetState>(
      builder: (context, state) {
        if (state is GettingAlarmPlanetLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is GettingAlarmPlanetFailedState ) {
          return Text(state.error);
        }
        if (state is GettingAlarmPlanetSuccessState) {
          for (final alarm in state.listOfAlarms) {
            NotificationHelper.scheduleAlarmNotification(alarmModel: alarm);
          }
          return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => LableAlarmWidget(
              alarmModel: state.listOfAlarms[index],
              planetId:   planetId,
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: state.listOfAlarms.length,
          );
        } else {
          return const Text("error");
        }
      },
    );
  }
}
