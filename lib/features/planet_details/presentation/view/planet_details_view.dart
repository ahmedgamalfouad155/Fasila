import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/planet_details_view_body.dart';
import 'package:flutter/material.dart';

class PlanetDetailsView extends StatelessWidget {
  const PlanetDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Garden',
          style: AppStyles.textStyle16Teal(
            context,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: PlanetDetailsViewBody(),
    );
  }
}
