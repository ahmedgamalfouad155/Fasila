import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/constants/images.dart';
import 'package:fasila/features/profile/presentation/view/widgets/profile_option_widget.dart';
import 'package:flutter/material.dart';

class ContactUsViewBody extends StatelessWidget {
  const ContactUsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      'Facebook',
      'Instagram',
      'WhatsApp',
      'Massenger',
      'Website',
      'Twitter',
      'LinkedIn',
      'Behance',
    ];
    final List<String> images = [
      AppImages.faceLogo,
      AppImages.instgramLogo,
      AppImages.whatsappLogo,
      AppImages.messengerLogo,
      AppImages.websiteLogo,
      AppImages.twitterLogo,
      AppImages.linkedinLogo,
      AppImages.behanceLogo,
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.separated(
        itemBuilder: (context, index) => ProfileOptionWidget(
          title: titles[index],
          logo: CachedNetworkImage(imageUrl: images[index]),
          onTap: () {},
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: titles.length,
      ),
    );
  }
}
