import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/planet_details/presentation/manager/alarm_planet_cubit/alarm_planet_cubit.dart';
import 'package:fasila/features/planet_details/presentation/manager/weeks_togel_cubit/days_toget_cubit.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/alarm_save_button_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/days_togel_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SaveAndCancelButtonWidget extends StatelessWidget {
  const SaveAndCancelButtonWidget({super.key, required this.planetModel});
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SaveButtonAlarmWidget(  planetModel: planetModel,),
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
    );
  }
}
