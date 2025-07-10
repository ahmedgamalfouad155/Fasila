
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/soil_and_humid_And_frtilizeAnd_note_section.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/water_and_ligty_and_temp_option_section.dart';
import 'package:flutter/material.dart';

class DetailsOptionWidget extends StatelessWidget {
  const DetailsOptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: 5,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: context.appColors.offWhite,
      ),
      child: Column(
        children: [
          WaterAndLigtyAndTempOptionSection(),
          SoilAndHumidAndFrtilizeandNoteSection(),
        ],
      ),
    );
  }
}
