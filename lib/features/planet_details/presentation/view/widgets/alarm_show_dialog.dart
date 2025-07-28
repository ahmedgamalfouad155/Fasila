import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/planet_details/presentation/manager/alarm_planet_cubit/alarm_planet_cubit.dart';
import 'package:fasila/features/planet_details/presentation/manager/alarm_time_cubit/alarm_time_cubit.dart';
import 'package:fasila/features/planet_details/presentation/manager/weeks_togel_cubit/days_toget_cubit.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/alarm_content_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/alarm_save_button_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/alarm_slider_widger.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/alarm_volume_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/asve_and_cancel_button_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/choose_lable_alarm_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/delete_alarm_text_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/switch_alarm_card_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/days_togel_widget.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<dynamic> alarmShowDialog(BuildContext context, PlanetModel planetModel) {
  final alarmPlanetCubit = context.read<AlarmPlanetCubit>();
  return showDialog(
    context: context,
    builder: (context) => Dialog(
      backgroundColor: context.appColors.offWhite,
      insetPadding: EdgeInsets.all(10),

      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => AlarmTimeCubit()),
              BlocProvider(create: (context) => DaysTogetCubit()),
              BlocProvider(create: (context) => FilterCubit()),
            ],
            child: Builder(
              builder: (context) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AlarmContentWidget(),
                    const SizedBox(height: 10),
                    DaysTogelWidget(),
                    const SizedBox(height: 10),
                    ChooseLableAlarmWidget(),
                    SwitchAlarmCardWidget(
                      discribtion: S.of(context).vibrateWhenAlarmSound,
                    ),
                    const SizedBox(height: 10),
                    SwitchAlarmCardWidget(
                      discribtion: S.of(context).deletAfterGoesOff,
                    ),
                    const SizedBox(height: 10),
                    AlarmVolumeWidget(),
                    const SizedBox(height: 10),
                    DeleteAlarmTextWidget(),
                    const SizedBox(height: 10),
                    BlocProvider.value(
                      value: alarmPlanetCubit,
                      child: SaveAndCancelButtonWidget(
                        planetModel: planetModel,
                      ),
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
