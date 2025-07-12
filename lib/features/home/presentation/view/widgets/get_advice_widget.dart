import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class GetAdviceWidget extends StatelessWidget {
  const GetAdviceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<NavBarCubit>().changeIndex(4);
        GoRouter.of(context).push(AppRouter.kContactUsView);
      },
      child: Card(
        elevation: 4,
        color: context.appColors.offWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get Advice',
                      style: AppStyles.textStyle16Teal(
                        context,
                      ).copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Talk to an expert to solve your problem',
                      style: AppStyles.textStyle14(
                        context,
                      ).copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: context.appColors.teal,
                  size: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
