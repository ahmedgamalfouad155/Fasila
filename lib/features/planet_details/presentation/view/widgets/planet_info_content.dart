import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:flutter/material.dart';

class PlanetInfoContent extends StatelessWidget {
  const PlanetInfoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButtonWidget(
          text: "Add Note",
          onPressed: () {},
          icon: Icon(Icons.add, color: context.appColors.white),
        ),
        // WaterAndLigtyAndTempOptionSection(),
        // SoilAndHumidAndFrtilizeandNoteSection(),
      ],
    );
  }
}
