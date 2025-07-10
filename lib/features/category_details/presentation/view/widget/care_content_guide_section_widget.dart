import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class CareContentGuideSectionWidget extends StatelessWidget {
  const CareContentGuideSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Text('''
Planting
Soil: Well-draining, rich in organic matter, with a pH between 6.0 and 6.8.
Light: Full sun (6-8 hours daily).
Spacing: 18-24 inches between plants to allow proper air circulation.
Watering
Frequency: Water deeply 1-2 times per week, depending on the weather.
Avoid: Overwatering, which can cause root rot. Water at the base to keep foliage dry.
Fertilizing
Use a balanced fertilizer high in phosphorus and potassium.
Fertilize every 2-4 weeks during the growing season.
Pruning
Remove suckers (small shoots between the main stem and branches) to focus energy on fruit production.
Prune lower leaves to prevent contact with the soil.
Support
Use cages, stakes, or trellises to keep plants upright and fruits off the ground.
''', style: AppStyles.textStyle14(context)),
        ),
      ],
    );
  }
}
