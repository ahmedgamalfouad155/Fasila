// lib/features/plant_details/widgets/switch_card_widget.dart
import 'package:fasila/core/helper/notification_scheduler.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/customs_box_decoratino.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/planet_details/data/models/alarm_model.dart';
import 'package:fasila/features/planet_details/presentation/manager/alarm_planet_cubit/alarm_planet_cubit.dart';
import 'package:fasila/features/planet_details/presentation/manager/switch_cubit/switch_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class LableAlarmWidget extends StatelessWidget {
  final AlarmModel alarmModel;
  final String planetId;

  const LableAlarmWidget({
    super.key,
    required this.alarmModel,
    required this.planetId,
  });

  @override
  Widget build(BuildContext context) {
    String getAmPm(int hour) {
      return hour >= 12 ? 'PM' : 'AM';
    }

    String getFormattedHour(int hour) {
      final formattedHour = hour % 12 == 0 ? 12 : hour % 12;
      return formattedHour.toString().padLeft(2, '0');
    }

    return BlocProvider(
      create: (_) => SwitchCardCubit(initial: alarmModel.isActive),
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
        decoration: CustomsBoxDecoration().defaultBoxDecoration(
          context,
          color: context.appColors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.network(alarmModel.icon),
                    const SizedBox(width: 12),
                    Text(
                      alarmModel.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "${getFormattedHour(alarmModel.hour)} : ${alarmModel.minute.toString().padLeft(2, '0')} ${getAmPm(alarmModel.hour)} - ${alarmModel.day}",
                  style: AppStyles.textStyle14(
                    context,
                  ).copyWith(color: context.appColors.grey),
                ),
                const SizedBox(height: 10),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    context.read<AlarmPlanetCubit>().deleteLableAlarm(
                      planetId,
                      alarmModel,
                    );
                  },
                  child: Icon(
                    Icons.delete_outline,
                    size: 25,
                    color: context.appColors.teal,
                  ),
                ),
                BlocBuilder<SwitchCardCubit, bool>(
                  builder: (context, isOn) {
                    final cubit = context.read<SwitchCardCubit>();
                    return Transform.scale(
                      scale: 0.7,
                      child: Switch(
                        value: isOn,
                        onChanged: (value) {
                          cubit.set(value);
                          context.read<AlarmPlanetCubit>().updateLableAlarm(
                            planetId,
                            alarmModel.copyWith(isActive: value),
                          );
                          alarmModel.isActive
                              ? NotificationHelper.scheduleAlarmNotification(
                                  alarmModel: alarmModel,
                                )
                              : NotificationHelper.cancelAlarmNotification(
                                  alarmModel,
                                );
                        },
                        activeColor: context.appColors.offWhite,
                        activeTrackColor: context.appColors.teal,
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
