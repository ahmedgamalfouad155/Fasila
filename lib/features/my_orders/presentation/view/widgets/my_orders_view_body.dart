import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/alarm_slider_widger.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyOrdersViewBody extends StatelessWidget {
  const MyOrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kMyOrderDetailsView);
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              padding: const EdgeInsetsGeometry.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: context.appColors.offWhite,
                boxShadow: [
                  BoxShadow(
                    color: context.appColors.grey,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '15/1/2025',
                        style: AppStyles.textStyle12Grey(context),
                      ),
                      Text(
                        '499.00 EGP',
                        style: AppStyles.textStyle16Teal(
                          context,
                        ).copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Order Number : ',
                        style: AppStyles.textStyle12Grey(context),
                      ),
                      Text(
                        '24424322341315',
                        style: AppStyles.textStyle14(context).copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.appColors.teal,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: context.appColors.teal,
                    thickness: 1,
                    height: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Requested',
                        style: AppStyles.textStyle16Teal(
                          context,
                        ).copyWith(fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: context.appColors.teal,
                        size: 20,
                      ),
                    ],
                  ),
                  AlarmSliderWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
