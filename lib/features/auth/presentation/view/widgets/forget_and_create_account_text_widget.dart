import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetAndCreateAccountTextWidget extends StatelessWidget {
  const ForgetAndCreateAccountTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Forgot Password?', style: AppStyles.textStyle12Grey(context)),
        InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kSignUpView);
          },
          child: Text(
            'Create New Account',
            style: AppStyles.textStyle12Grey(context),
          ),
        ),
      ],
    );
  }
}
