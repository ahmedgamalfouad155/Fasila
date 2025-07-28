import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:fasila/features/home/presentation/view/widgets/home_category_typy_widget.dart';
import 'package:fasila/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_cubit.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TakePicitreCardWidget extends StatelessWidget {
  const TakePicitreCardWidget({super.key});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  S.of(context).treatYortCropAndHelpItRecover,
                  style: AppStyles.textStyle16Teal(
                    context,
                  ).copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeCategoryTypeWidget(
                      image: AppImages.camera1Image,
                      title: S.of(context).takePicture,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: context.appColors.teal,
                      size: 16,
                    ),
                    HomeCategoryTypeWidget(
                      image: AppImages.camera2Image,
                      title: S.of(context).seeDiagnosis,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: context.appColors.teal,
                      size: 16,
                    ),
                    HomeCategoryTypeWidget(
                      image: AppImages.camera3Image,
                      title: S.of(context).getMedicine,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                CustomButon(
                  text: S.of(context).takePicture,
                  onPressed: () {
                    context.read<NavBarCubit>().changeIndex(2);
                    context.go(AppRouter.kCameraView);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
