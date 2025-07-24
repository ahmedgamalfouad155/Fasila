import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/auth/presentation/manager/password_validation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignupRoleSectionWidget extends StatelessWidget {
  const SignupRoleSectionWidget({super.key, required this.passwordController});
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    passwordController.addListener(() {
      context.read<PasswordValidationCubit>().validate(passwordController.text);
    });

    return BlocBuilder<PasswordValidationCubit, PasswordValidationState>(
      builder: (context, state) {
        Widget buildItem(bool condition, String text) {
          return Row(
            children: [
              Icon(
                condition ? Icons.check_circle : Icons.cancel,
                color: condition
                    ? context.appColors.green
                    : context.appColors.grey,
                size: 16,
              ),
              const SizedBox(width: 6),
              Text(
                text,
                style: AppStyles.textStyle12Grey(context).copyWith(
                  color: condition
                      ? context.appColors.green
                      : context.appColors.grey,
                ),
              ),
            ],
          );
        }

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

            buildItem(state.hasUpperCase, '• Capital letter (A-Z)'),
            const SizedBox(height: 5),

            buildItem(state.hasLowerCase, '• One lowercase letter (a-z)'),
            const SizedBox(height: 5),

            buildItem(state.hasNumber, '• 1 number (0-9)'),
            const SizedBox(height: 5),

            buildItem(
              state.hasSpecialChar,
              '• 1 special character (@#+\$%^&*_-+=,.?/)',
            ),
            const SizedBox(height: 5),

            buildItem(state.hasMinLength, '• At least 8 characters'),
            const SizedBox(height: 30),
          ],
        );
      },
    );
  }
}
