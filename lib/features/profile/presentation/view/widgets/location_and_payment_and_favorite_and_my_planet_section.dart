import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_cubit.dart';
import 'package:fasila/features/profile/presentation/view/widgets/profile_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class LocationAndPaymentAndFavoritAndMyPlanetSection extends StatelessWidget {
  const LocationAndPaymentAndFavoritAndMyPlanetSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileOptionWidget(
          logo: Icon(Icons.location_on, color: context.appColors.teal),
          title: 'Location',
          onTap: () {
            GoRouter.of(context).push(AppRouter.kLocationView);
          },
        ),
        const SizedBox(height: 10),
        ProfileOptionWidget(
          logo: SvgPicture.asset(AppImages.paymentImage),
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

        BlocProvider(
          create: (context) => NavBarCubit(),
          child: ProfileOptionWidget(
            logo: SvgPicture.asset(AppImages.navMyPlanetIconClick),
            title: 'My Plants',
            onTap: () {
              context.read<NavBarCubit>().changeIndex(3);
            },
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
