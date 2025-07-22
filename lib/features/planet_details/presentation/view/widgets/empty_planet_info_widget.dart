
import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/planet_info_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyPlanetInfoWidget extends StatelessWidget {
  const EmptyPlanetInfoWidget({
    super.key,
  
  });

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlanetInfoCardWidget(
          title: 'Water',
          icon: SvgPicture.network(AppImages.waterImage),
          details: Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(
               'no data',
    
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
              'no data',
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
              'no data',
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
              'no data',
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
               'no data',
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
               'no data',
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
    );
  }
}
