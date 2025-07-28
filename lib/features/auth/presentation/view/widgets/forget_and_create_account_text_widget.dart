import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetAndCreateAccountTextWidget extends StatelessWidget {
  const ForgetAndCreateAccountTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          S.of(context).forgotePassword,
          style: AppStyles.textStyle12Grey(context),
        ),
        InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kSignUpView);
          },
          child: Text(
            S.of(context).createAccount,
            style: AppStyles.textStyle12Grey(context),
          ),
        ),
      ],
    );
  }
}
