import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/fasila_pro/presentation/view/widgets/check_benefits_upgrade_widget.dart';
import 'package:flutter/material.dart';

class YearlyContentWidget extends StatelessWidget {
  const YearlyContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.7,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: context.appColors.offWhite,
                boxShadow: [
                  BoxShadow(
                    color: context.appColors.grey,
                    blurRadius: 3,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text('Fasila Pro', style: AppStyles.textStyle24(context)),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('490.99 EGP', style: AppStyles.textStyle24(context)),
                      const SizedBox(width: 5),
                      Text(
                        '/Year',
                        style: AppStyles.textStyle14(
                          context,
                        ).copyWith(color: context.appColors.grey),
                      ),
                    ],
                  ),
                  Divider(
                    color: context.appColors.teal,
                    thickness: .7,
                    height: 50,
                  ),
                  CheckBenefitsUpgradeWidget(
                    title: 'Advanced plant disease diagnosis',
                  ),
                  const SizedBox(height: 16),
                  CheckBenefitsUpgradeWidget(title: 'Unlimited plant tracking'),
                  const SizedBox(height: 16),
                  CheckBenefitsUpgradeWidget(
                    title: 'Smart care schedule with notifications',
                  ),
                  const SizedBox(height: 16),
                  CheckBenefitsUpgradeWidget(title: 'Instant expert support'),
                  const SizedBox(height: 16),
                  CheckBenefitsUpgradeWidget(
                    title: '10% discount on plant store purchases',
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                width: 80,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                  color: context.appColors.teal,
                ),
                child: Center(
                  child: Text(
                    "save 17%",
                    style: AppStyles.textStyle12White(context),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        DefaultButtonWidget(text: "continue -  49.99 EGP", onPressed: () {}),
      ],
    );
  }
}
