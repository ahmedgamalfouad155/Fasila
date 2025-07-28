import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/planet_info_cart_widget.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryDetailsOptionWidget extends StatelessWidget {
  const CategoryDetailsOptionWidget({super.key, required this.planetModel});
  final PlanetModel planetModel;

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
            title:  S.of(context).water,
            icon: SvgPicture.network(AppImages.waterImage),
            details: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                planetModel.planetCare.water,
                textAlign: TextAlign.start,
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
            ),
          ),
          PlanetInfoCardWidget(
            title:    S.of(context).light,
            icon: SvgPicture.network(AppImages.lightImage),
            details: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                planetModel.planetCare.light,
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
                planetModel.planetCare.temperature,
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
                planetModel.planetCare.soil,
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
            ),
          ),
          PlanetInfoCardWidget(
            title:  S.of(context).humidity,
            icon: SvgPicture.network(AppImages.humidityImage),
            details: Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                planetModel.planetCare.humidity,
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
            ),
          ),
          PlanetInfoCardWidget(
            title:  S.of(context).fertilizer,
            icon: SvgPicture.network(AppImages.fertilizerImage),
            details: Align(
              alignment: AlignmentDirectional.topStart,

              child: Text(
                planetModel.planetCare.fertilizer,
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
