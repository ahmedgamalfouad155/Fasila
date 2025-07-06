// about_disease_content.dart
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class AboutDiseaseContent extends StatelessWidget {
  const AboutDiseaseContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "The Tobacco Mosaic Virus (TMV) is a highly contagious disease affecting tomato plants, leading to reduced growth and yield quality. It spreads quickly through direct contact, infected plant debris, insect vectors, and contaminated seeds. Symptoms of TMV in Tomatoes Leaves: Mosaic patterns, curling, and stunted growth. Stems: Dwarfing and cracking. Fruits: Delayed ripening, yellow or brown spots, and reduced yield. Modes of Transmission Direct Contact: The virus spreads through hands, pruning tools, and handling of infected plants. Even minor wounds on the plant surface can serve as entry points for TMV, accelerating its spread within a field. Infected Plant Residues: TMV can persist in the soil and infect new crops. The virus remains viable for long periods in dead plant material, making crop rotation and proper disposal of infected debris essential. Insect Vectors: Some insects facilitate the spread of the virus. While TMV is not primarily insect-borne, aphids and other pests can aid in mechanical transmission by carrying the virus on their bodies as they move between plants. Contaminated Seeds: The virus can be present in seeds, leading to early infection.",
          style: AppStyles.textStyle12Grey(context),
        ),
        SizedBox(height: 6),
        Text(
          "Symptoms of TMV in Tomatoes:",
          style: AppStyles.textStyle16Teal(
            context,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 3),
        Text("- Leaves: Mosaic patterns, curling..."),
        Text("- Stems: Dwarfing and cracking..."),
        Text("- Fruits: Delayed ripening, yellow or brown spots..."),
        const SizedBox(height: 6),
        Text(
          "Modes of Transmission:",
          style: AppStyles.textStyle16Teal(
            context,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 3),
        Text(
          "- Direct Contact: The virus spreads through hands, pruning tools, and handling of infected plants. Even minor wounds on the plant surface can serve as entry points for TMV, accelerating its spread within a field",
        ),
        Text(
          "- Infected Plant Residues: TMV can persist in the soil and infect new crops. The virus remains viable for long periods in dead plant material, making crop rotation and proper disposal of infected debris essential.",
        ),
        Text(
          "- Insect Vectors: Some insects facilitate the spread of the virus. While TMV is not primarily insect-borne, aphids and other pests can aid in mechanical transmission by carrying the virus on their bodies as they move between plant",
        ),
      ],
    );
  }
}
