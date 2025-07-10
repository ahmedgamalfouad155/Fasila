import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/camera/presentation/view/camera_view.dart';
import 'package:fasila/features/home/presentation/view/home_view.dart';
import 'package:fasila/features/my_planet/presentation/view/my_planet.dart';
import 'package:fasila/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_cubit.dart';
import 'package:fasila/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_state.dart';
import 'package:fasila/features/profile/presentation/view/profile_view.dart';
import 'package:fasila/features/shop/presentation/view/shop_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarViewBody extends StatefulWidget {
  const NavBarViewBody({super.key});
  @override
  State<NavBarViewBody> createState() => _NavBarViewBodyState();
}

class _NavBarViewBodyState extends State<NavBarViewBody> {
  List<Widget> screen = const [
    HomeView(),
    ShopView(),
    CameraView(),
    MyPlanetView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<NavBarCubit>(context);
    return BlocBuilder<NavBarCubit, NavBarState>(
      bloc: homeCubit,
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(index: homeCubit.currentIndex, children: screen),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: context.appColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
            ),
            child: BottomNavigationBar(
              onTap: (index) => homeCubit.changeIndex(index),
              currentIndex: homeCubit.currentIndex,
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
                    homeCubit.currentIndex == 0
                        ? AppImages.navHomeIconClick
                        : AppImages.navHomeIcon,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    homeCubit.currentIndex == 1
                        ? AppImages.navShopIconClick
                        : AppImages.navShopIcon,
                  ),
                  label: 'Shop',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppImages.navCameraIcon, width: 60),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    homeCubit.currentIndex == 3
                        ? AppImages.navMyPlanetIconClick
                        : AppImages.navMyPlanetIcon,
                  ),
                  label: 'My Planet',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    homeCubit.currentIndex == 4
                        ? AppImages.navProfileIconClick
                        : AppImages.navProfileIcon,
                  ),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
