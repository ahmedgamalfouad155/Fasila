import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/planet_info_section.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';

class PlanetInfoContent extends StatelessWidget {
  const PlanetInfoContent({super.key, required this.planetModel});
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultButtonWidget(
          text: S.of(context).addNote,
          onPressed: () {},
          icon: Icon(Icons.add, color: context.appColors.white),
        ),
        PlanetInfoSection(planetModel: planetModel),
      ],
    );
  }
}
