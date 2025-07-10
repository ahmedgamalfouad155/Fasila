import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class PlantingContentGuideSectionWidget extends StatelessWidget {
  const PlantingContentGuideSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Text(
            '''1_Start Seeds Indoors: Sow seeds 6-8
weeks before the last frost, 1/4 inch deep in nutrient-rich soil.
2_Transplanting: Move seedlings outdoors 
fter the last frost.Space plants 18-24 inches apart. 
3_Planting Tip: Bury part of the stem to promote strong root growth.''',
            style: AppStyles.textStyle14(context),
          ),
        ),
      ],
    );
  }
}
