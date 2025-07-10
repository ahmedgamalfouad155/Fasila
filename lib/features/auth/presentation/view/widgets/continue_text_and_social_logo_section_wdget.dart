import 'package:fasila/core/constants/images.dart';
import 'package:fasila/features/auth/presentation/view/widgets/divider_with_text_widget.dart';
import 'package:fasila/features/auth/presentation/view/widgets/logo_container_widget.dart';
import 'package:flutter/material.dart';

class ContinueTextAndSocialLogoSectionWdiget extends StatelessWidget {
  const ContinueTextAndSocialLogoSectionWdiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DividerWithTextWidget(),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogoContainerWidget(logo: AppImages.googleLogo),
            const SizedBox(width: 10),
            LogoContainerWidget(logo: AppImages.facebookLogo),
            const SizedBox(width: 10),
            LogoContainerWidget(logo: AppImages.appleLogo),
          ],
        ),
      ],
    );
  }
}
