import 'package:fasila/features/profile/presentation/view/widgets/language_option_widget.dart';
import 'package:fasila/features/profile/presentation/view/widgets/location_and_payment_and_favorite_and_my_planet_section.dart';
import 'package:fasila/features/profile/presentation/view/widgets/logout_text_widget.dart';
import 'package:fasila/features/profile/presentation/view/widgets/mode_option_widget.dart';
import 'package:fasila/features/profile/presentation/view/widgets/my_orders_and_fasila_pro_and_contactus_section.dart';
import 'package:fasila/features/profile/presentation/view/widgets/profile_image_widget.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProfileImageWidget(),
            const SizedBox(height: 10),
            LocationAndPaymentAndFavoritAndMyPlanetSection(),
            MyOrdersAndFasilaProAndContactUsSection(),
            ModeOptionWidget(),
            LanguageOptionWidget(),
            LogoutTextWidget(),
          ],
        ),
      ),
    );
  }
}
