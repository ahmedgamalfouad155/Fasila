import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/planet_details/data/constant_planet_details.dart';
import 'package:fasila/features/planet_details/presentation/manager/weeks_togel_cubit/days_toget_cubit.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/planet_info_cart_widget.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class PlanetInfoDetailsOptionWidget extends StatelessWidget {
  const PlanetInfoDetailsOptionWidget({super.key, required this.planetModel});
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) {
    final weekIndex = context.watch<FilterCubit>().state;
    final dayIndex = context.watch<DaysTogetCubit>().state;
    final data = planetModel
        .dailyFarm[weekIndex]
        .days[ConstantPlanetDetails().days[dayIndex].toLowerCase()];
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: context.appColors.offWhite,
      ),
      child: Column(
        children: [
          PlanetInfoCardWidget(
            title: 'Water',
            icon: SvgPicture.network(AppImages.waterImage),
            details: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                data?.water ?? 'no data',

                textAlign: TextAlign.start,
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
            ),
          ),
          PlanetInfoCardWidget(
            title: 'Light',
            icon: SvgPicture.network(AppImages.lightImage),
            details: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                data?.light ?? 'no data',
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
            ),
          ),
          PlanetInfoCardWidget(
            title: 'Temperature',
            icon: SvgPicture.network(AppImages.temperatureImage),
            details: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                data?.temperature ?? 'no data',
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
            ),
          ),

          PlanetInfoCardWidget(
            title: 'The Soil',
            icon: SvgPicture.network(AppImages.soilImage),
            details: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                data?.soil ?? 'no data',
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
            ),
          ),
          PlanetInfoCardWidget(
            title: 'Humidty',
            icon: SvgPicture.network(AppImages.humidityImage),
            details: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                data?.humidity ?? 'no data',
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
            ),
          ),
          PlanetInfoCardWidget(
            title: 'Fertiliz',
            icon: SvgPicture.network(AppImages.fertilizerImage),
            details: Align(
              alignment: AlignmentDirectional.topStart,

              child: Text(
                data?.fertilizer ?? 'no data',
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
            ),
          ),
          PlanetInfoCardWidget(
            title: 'Note',
            icon: SvgPicture.network(AppImages.noteImage),
            details: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'Before Planting : User conpost or slow-realase fertizer',
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
