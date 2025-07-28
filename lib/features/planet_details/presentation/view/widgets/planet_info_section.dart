import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/planet_details/data/constant_planet_details.dart';
import 'package:fasila/features/planet_details/presentation/manager/weeks_togel_cubit/days_toget_cubit.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/empty_planet_info_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/planet_info_details_option_widget.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PlanetInfoSection extends StatelessWidget {
  const PlanetInfoSection({super.key, required this.planetModel});
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) {
    final weekIndex = context.watch<FilterCubit>().state;
    final dayIndex = context.watch<DaysTogetCubit>().state;
    if (planetModel.dailyFarm.isEmpty) {
      return const EmptyPlanetInfoWidget();
    } else {
      final data = planetModel
          .dailyFarm[weekIndex]
          .days[ConstantPlanetDetails(context).days[dayIndex].toLowerCase()];
      return PlanetInfoDetailsOptionWidget(data: data);
    }
  }
}
