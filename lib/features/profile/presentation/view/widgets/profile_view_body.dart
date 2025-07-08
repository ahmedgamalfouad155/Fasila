import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/profile/presentation/view/widgets/profile_image_widget.dart';
import 'package:fasila/features/profile/presentation/view/widgets/profile_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            ProfileOptionWidget(
              logo: Icon(Icons.location_on, color: context.appColors.teal),
              title: 'Location',
              onTap: () {
                GoRouter.of(context).push(AppRouter.kLocationView);
              },
            ),
            const SizedBox(height: 10),

            ProfileOptionWidget(
              logo: CachedNetworkImage(imageUrl: AppImages.paymentImage),
              title: 'Payment',
              onTap: () {},
            ),
            const SizedBox(height: 10),

            ProfileOptionWidget(
              logo: Icon(Icons.favorite, color: context.appColors.teal),
              title: 'Favorites',
              onTap: () {
                GoRouter.of(context).push(AppRouter.kFavoritesView);
              },
            ),
            const SizedBox(height: 10),

            ProfileOptionWidget(
              logo: CachedNetworkImage(imageUrl: AppImages.myPlanetLogo),
              title: 'My Plants',
              onTap: () {},
            ),
            const SizedBox(height: 10),

            ProfileOptionWidget(
              logo: CachedNetworkImage(imageUrl: AppImages.myOrdersLogo),

              title: 'My Orders',
              onTap: () {
                GoRouter.of(context).push(AppRouter.kMyOrdersView);
              },
            ),
            const SizedBox(height: 10),

            ProfileOptionWidget(
              logo: CachedNetworkImage(imageUrl: AppImages.faselaProLogo),

              title: 'Fasila Pro',
              onTap: () {
                GoRouter.of(context).push(AppRouter.kFasilaProView);
              },
            ),
            const SizedBox(height: 10),

            ProfileOptionWidget(
              logo: Icon(Icons.phone, color: context.appColors.teal),
              title: 'Contact Us',
              onTap: () {
                GoRouter.of(context).push(AppRouter.kContactUsView);
              },
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 10),
                Icon(Icons.logout, color: Colors.red),
                const SizedBox(width: 10),
                Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
