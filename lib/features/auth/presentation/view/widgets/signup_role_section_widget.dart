import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupRoleSectionWidget extends StatelessWidget {
  const SignupRoleSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kLogInView);
          },
          child: Text(
            'Already have an account ?',
            style: AppStyles.textStyle14(
              context,
            ).copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'The password must be at least 8 characters long and must include:',
          style: AppStyles.textStyle12Grey(context),
        ),
        const SizedBox(height: 10),
        Text(
          '• Capital letter (A-Z)',
          style: AppStyles.textStyle12Grey(context),
        ),
        const SizedBox(height: 5),
        Text(
          '• One lowercase letter (from a to z)',
          style: AppStyles.textStyle12Grey(context),
        ),
        const SizedBox(height: 5),
        Text('• 1 number (0-9)', style: AppStyles.textStyle12Grey(context)),
        const SizedBox(height: 5),
        Text(
          '• 1 special character (@#+\$%^&*_-+=,.?/)',
          style: AppStyles.textStyle12Grey(context),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
