
import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/planet_info_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class SoilAndHumidAndFrtilizeAndNoteSection extends StatelessWidget {
  const SoilAndHumidAndFrtilizeAndNoteSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CareCardWidget(
          title: 'The Soil',
          icon: SvgPicture.asset(AppImages.soilImage),
          details: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Water deeply and regulary',
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
              SizedBox(height: 4),
              Text(
                'Avoid waterlogging to prevent ',
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
            ],
          ),
        ),
        CareCardWidget(
          title: 'Humidty',
          icon: SvgPicture.asset(AppImages.humidityImage),
          details: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ideal: 50-60%',
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
              SizedBox(height: 4),
              Text(
                'Too Hight: Increase disase risk',
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
              SizedBox(height: 4),
              Text(
                'Too Low: Can cause dehydration',
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
            ],
          ),
        ),
        CareCardWidget(
          title: 'Fertiliz',
          icon: SvgPicture.asset(AppImages.fertilizerImage),
          details: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Before Planting : User conpost or slow-realase fertizer',
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
              SizedBox(height: 4),
              Text(
                'Duration Growth : Apply liquid feartizer ',
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
            ],
          ),
        ), 
        CareCardWidget(
          title: 'Note',
          icon: SvgPicture.asset(AppImages.noteImage),
          details: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Before Planting : User conpost or slow-realase fertizer',
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
              SizedBox(height: 4),
              Text(
                'Duration Growth : Apply liquid feartizer ',
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(color: context.appColors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
