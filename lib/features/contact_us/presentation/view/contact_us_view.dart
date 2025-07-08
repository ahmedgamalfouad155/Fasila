import 'package:fasila/core/widgets/custom_titil_and_logos_app_bar.dart';
import 'package:fasila/features/contact_us/presentation/view/widgets/contact_us_view_body.dart';
import 'package:flutter/material.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customTitleAndLogoosAppBar(title: 'Contact Us', context: context),
      body: ContactUsViewBody(),
    );
  }
}
