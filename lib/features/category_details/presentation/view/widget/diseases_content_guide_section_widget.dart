import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class DiseasesContentGuideSectionWidget extends StatelessWidget {
  const DiseasesContentGuideSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Text('''
Fungal
Early/Late Blight: Brown spots or water-soaked lesions; prevent with crop rotation and fungicides.
Powdery Mildew: White powder on leaves; improve air circulation.
Bacterial
Bacterial Spot/Wilt: Dark spots or sudden wilting; use resistant varieties and copper sprays.
Viral
Mosaic Virus: Stunted growth, discolored leaves; use virus-free seeds.
Pests
Aphids: Treat with neem oil.
Hornworms: Handpick or use biological controls.
''', style: AppStyles.textStyle14(context)),
        ),
      ],
    );
  }
}
