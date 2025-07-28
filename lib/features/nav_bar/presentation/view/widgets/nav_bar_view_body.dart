import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_cubit.dart';
import 'package:fasila/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_state.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class NavBarViewBody extends StatefulWidget {
  final Widget child;
  const NavBarViewBody({super.key, required this.child});

  @override
  State<NavBarViewBody> createState() => _NavBarViewBodyState();
}

class _NavBarViewBodyState extends State<NavBarViewBody> {
  final List<String> _routes = [
    AppRouter.kHomeView,
    AppRouter.kShopView,
    AppRouter.kCameraView,
    AppRouter.kMyPlanetView,
    AppRouter.kProfileView,
  ];

  @override
  Widget build(BuildContext context) {
    final navBarCubit = context.read<NavBarCubit>();

    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        return Scaffold(
          body: widget.child,
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: context.appColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
            ),
            child: BottomNavigationBar(
              onTap: (index) {
                navBarCubit.changeIndex(index);
                context.go(_routes[index]);
              },
              currentIndex: navBarCubit.currentIndex,
              type: BottomNavigationBarType.fixed,
              backgroundColor: context.appColors.offWhite,
              elevation: 0,
              selectedItemColor: context.appColors.teal,
              unselectedItemColor: context.appColors.teal,
              selectedLabelStyle: AppStyles.textStyle12White(
                context,
              ).copyWith(fontWeight: FontWeight.bold),
              unselectedLabelStyle: AppStyles.textStyle12White(
                context,
              ).copyWith(fontWeight: FontWeight.bold),
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    navBarCubit.currentIndex == 0
                        ? AppImages.navHomeIconClick
                        : AppImages.navHomeIcon,
                  ),
                  label: S.of(context).home,
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    navBarCubit.currentIndex == 1
                        ? AppImages.navShopIconClick
                        : AppImages.navShopIcon,
                  ),
                  label: S.of(context).shop,
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppImages.navCameraIcon, width: 60),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    navBarCubit.currentIndex == 3
                        ? AppImages.navMyPlanetIconClick
                        : AppImages.navMyPlanetIcon,
                  ),
                  label: S.of(context).myPlanet,
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    navBarCubit.currentIndex == 4
                        ? AppImages.navProfileIconClick
                        : AppImages.navProfileIcon,
                  ),
                  label: S.of(context).profile,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
