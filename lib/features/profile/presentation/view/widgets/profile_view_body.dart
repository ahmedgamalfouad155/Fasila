import 'package:fasila/features/profile/presentation/view/widgets/profile_image_widget.dart';
import 'package:fasila/features/profile/presentation/view/widgets/profile_option_widget.dart';
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
            ProfileOptionWidget(
              icon: Icons.location_on,
              title: 'Location',
              onTap: () {},
            ),
            const SizedBox(height: 10),

            ProfileOptionWidget(
              icon: Icons.payment,
              title: 'Payment',
              onTap: () {},
            ),
            const SizedBox(height: 10),

            ProfileOptionWidget(
              icon: Icons.favorite,
              title: 'Favorites',
              onTap: () {},
            ),
            const SizedBox(height: 10),

            ProfileOptionWidget(
              icon: Icons.grid_view_rounded,
              title: 'My Plants',
              onTap: () {},
            ),
            const SizedBox(height: 10),

            ProfileOptionWidget(
              icon: Icons.badge_rounded,
              title: 'My Orders',
              onTap: () {},
            ),
            const SizedBox(height: 10),

            ProfileOptionWidget(
              icon: Icons.pix_rounded,
              title: 'Fasila Pro',
              onTap: () {},
            ),
            const SizedBox(height: 10),

            ProfileOptionWidget(
              icon: Icons.phone,
              title: 'Contact Us',
              onTap: () {},
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
