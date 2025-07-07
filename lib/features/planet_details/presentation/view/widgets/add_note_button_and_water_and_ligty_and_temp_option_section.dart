import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/planet_info_cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddNoteButtonAndWaterAndLigtyAndTempOptionSection
    extends StatelessWidget {
  const AddNoteButtonAndWaterAndLigtyAndTempOptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButtonWidget(
          text: "Add Note",
          onPressed: () {},
          icon: Icon(Icons.add, color: context.appColors.white),
        ),
        PlanetInfoCardWidget(
          title: 'Water',
          icon: SvgPicture.network(AppImages.waterImage),
          details: Align(
            alignment: AlignmentDirectional.topStart,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Water deeply and regulary',
                  textAlign: TextAlign.start,
                  style: AppStyles.textStyle14(
                    context,
                  ).copyWith(color: context.appColors.grey),
                ),
                SizedBox(height: 4),
                Text(
                  'Avoid waterlogging to prevent ',
                  textAlign: TextAlign.start,
                  style: AppStyles.textStyle14(
                    context,
                  ).copyWith(color: context.appColors.grey),
                ),
              ],
            ),
          ),
        ),
        PlanetInfoCardWidget(
          title: 'Light',
          icon: SvgPicture.network(AppImages.lightImage),
          details: Align(
            alignment: AlignmentDirectional.topStart,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Full Sun (6-8 hours daily)',
                  style: AppStyles.textStyle14(
                    context,
                  ).copyWith(color: context.appColors.grey),
                ),
              ],
            ),
          ),
        ),
        PlanetInfoCardWidget(
          title: 'Temperature',
          icon: SvgPicture.network(AppImages.temperatureImage),
          details: Align(
            alignment: AlignmentDirectional.topStart,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Thrives is 20-30°C',
                  style: AppStyles.textStyle14(
                    context,
                  ).copyWith(color: context.appColors.grey),
                ),
                SizedBox(height: 4),
                Text(
                  'Avoid waterlogging to prevent',
                  style: AppStyles.textStyle14(
                    context,
                  ).copyWith(color: context.appColors.grey),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
