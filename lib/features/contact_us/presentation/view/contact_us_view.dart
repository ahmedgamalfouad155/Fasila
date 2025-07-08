import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/contact_us/presentation/view/widgets/contact_us_view_body.dart';
import 'package:flutter/material.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact Us',
          style: AppStyles.textStyle16Teal(
            context,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: ContactUsViewBody(),
    );
  }
}
