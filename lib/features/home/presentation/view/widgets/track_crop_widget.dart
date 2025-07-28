import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_cubit.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class TrackCropCardWiget extends StatelessWidget {
  const TrackCropCardWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: Card(
        elevation: 4,
        color: context.appColors.offWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: InkWell(
              onTap: () {
                context.read<NavBarCubit>().changeIndex(3);
                context.go(AppRouter.kMyPlanetView);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.network(AppImages.drowImage, height: 30),
                      const SizedBox(height: 8),
                      Text(
                        S.of(context).trackYourCrop,
                        style: AppStyles.textStyle16Teal(
                          context,
                        ).copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      SvgPicture.network(AppImages.planetImage),
                      Positioned(
                        right: 0,
                        bottom: 30,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: context.appColors.teal,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
