// health_care_content.dart
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class HealthCareContent extends StatelessWidget {
  const HealthCareContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Modes of Transmission:",
          style: AppStyles.textStyle16Teal(context),
        ),
        const SizedBox(height: 6),
        Text("- Direct Contact: spreads through hands, tools..."),
        const SizedBox(height: 6),
        Text("- Infected Plant Residues: remains viable in soil..."),
        const SizedBox(height: 6),
        Text("- Insect Vectors: insects facilitate virus spread..."),
        const SizedBox(height: 6),
        Text("- Contaminated Seeds: early infection source..."),
      ],
    );
  }
}
