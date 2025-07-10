import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/fasila_pro/presentation/view/widgets/check_benefits_upgrade_widget.dart';
import 'package:flutter/material.dart';

class MonthlyContentWidget extends StatelessWidget {
  const MonthlyContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.7,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
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
                  Text('49.99 EGP', style: AppStyles.textStyle24(context)),
                  const SizedBox(width: 5),
                  Text(
                    '/mouth',
                    style: AppStyles.textStyle14(
                      context,
                    ).copyWith(color: context.appColors.grey),
                  ),
                ],
              ),
              Divider(
                color: context.appColors.teal,
                thickness: .7,
                height: 20,
              ),
              CheckBenefitsUpgradeWidget(
                title: 'Unlimited access to all features',
              ),
              const SizedBox(height: 16),
              CheckBenefitsUpgradeWidget(title: 'Unlimited plant tracking'),
              const SizedBox(height: 16),
              CheckBenefitsUpgradeWidget(
                title: 'Smart care schedule with notifications',
              ),
              const SizedBox(height: 16),
              CheckBenefitsUpgradeWidget(title: 'Instant expert support'),
            ],
          ),
        ),
        const SizedBox(height: 30),
        DefaultButtonWidget(text: "Continue - 9.99 EGP ", onPressed: () {}),
      ],
    );
  }
}
