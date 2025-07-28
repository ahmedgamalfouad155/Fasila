
import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/category_details/data/models/planet_care_model.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/planet_info_cart_widget.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlanetInfoDetailsOptionWidget extends StatelessWidget {
  const PlanetInfoDetailsOptionWidget({
    super.key,
    required this.data,
  });

  final PlantCareModel? data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: context.appColors.offWhite,
      ),
      child: Column(
        children: [
          PlanetInfoCardWidget(
            title: S.of(context).water,
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
            title: S.of(context).light,
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
            title: S.of(context).temperature,
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
            title: S.of(context).soil,
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
            title: S.of(context).humidity,
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
            title: S.of(context).fertilizer,
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
            title: S.of(context).note,
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
