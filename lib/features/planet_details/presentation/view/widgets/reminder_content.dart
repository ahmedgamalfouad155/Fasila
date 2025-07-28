import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/planet_details/presentation/manager/alarm_planet_cubit/alarm_planet_cubit.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/alarm_show_dialog.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/list_of_lable_alarm_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/lable_alarm_widget.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ReminderContent extends StatelessWidget {
  const ReminderContent({super.key, required this.planetModel});
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AlarmPlanetCubit()..getLablesAlarm(planetModel.id),
      child: Builder(
        builder: (context) {
          return Column(
            children: [
              DefaultButtonWidget(
                text: S.of(context).addAlarm,
                onPressed: () {
                  alarmShowDialog(context, planetModel);
                },
                icon: Icon(Icons.alarm, color: context.appColors.white),
              ),

              ListOfLableAlarmWidget(
                planetId: planetModel.id,
              ),
            ],
          );
        },
      ),
    );
  }
}
