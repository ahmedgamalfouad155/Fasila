import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
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
import 'package:flutter_svg/svg.dart';

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
              color: context.appColors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
              boxShadow: [
                BoxShadow(
                  color:context.appColors.black,
                  offset: const Offset(0, -2), // لأعلى (من الأسفل)
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Divider(
                  height: 1,
                  thickness: 1,
                  color:context.appColors.black, // الخط العلوي
                ),
                BottomNavigationBar(
                  onTap: (index) => homeCubit.changeIndex(index),
                  currentIndex: homeCubit.currentIndex,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor:context.appColors.black,
                  elevation: 0,
                  showUnselectedLabels: true,
                  selectedItemColor: context.appColors.black,
                  unselectedItemColor: context.appColors.teal,
                  selectedLabelStyle: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  items: [
                    BottomNavigationBarItem(
                      icon: SvgPicture.network(AppImages.homeIcon),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.network(AppImages.shopIcon),
                      label: 'Shop',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.network(AppImages.cameraIcon),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.network(AppImages.myPlanetIcon),
                      label: 'My Planet',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.network(AppImages.profileIcon),
                      label: 'Profile',
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
