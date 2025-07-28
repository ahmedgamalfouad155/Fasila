import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/auth/presentation/manager/password_validation_cubit.dart';
import 'package:fasila/generated/l10n.dart';
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
                  S.of(context).alreadyHaveAnAccount,
                style: AppStyles.textStyle14(
                  context,
                ).copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              S.of(context).thePasswordMustBeAtLeast8CharactersLongAndMustInclude,
              style: AppStyles.textStyle12Grey(context),
            ),
            const SizedBox(height: 10),

            buildItem(state.hasUpperCase,   S.of(context).capitalLetter),
            const SizedBox(height: 5),

            buildItem(state.hasLowerCase, S.of(context).lowercaseLetter),
            const SizedBox(height: 5),

            buildItem(state.hasNumber,  S.of(context).number),
            const SizedBox(height: 5),

            buildItem(
              state.hasSpecialChar,
                S.of(context).specialCharacter,
            ),
            const SizedBox(height: 5),

            buildItem(state.hasMinLength, S.of(context).atLeast8Characters),
            const SizedBox(height: 30),
          ],
        );
      },
    );
  }
}
