import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:fasila/core/widgets/custom_snak_bar.dart';
import 'package:fasila/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignupButtonSectionWidget extends StatelessWidget {
  const SignupButtonSectionWidget({
    super.key,
    required this.formKey,
    required this.passwordController,
    required this.emailController,
    required this.nameController,
    required this.confirmPasswordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController passwordController;
  final TextEditingController emailController;
  final TextEditingController nameController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    final authcubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      bloc: authcubit,
      listener: (context, state) {
        if (state is SignupSuccessState) {
          (context).go(AppRouter.kHomeView);
          passwordController.clear();
          emailController.clear();
          nameController.clear();
          confirmPasswordController.clear();
        }
        if (state is SignupFailedState) {
          customSnakBar(context, message: state.error);
        }
      },
      builder: (context, state) {
        if (state is SignupLoadingState) {
          return const CircularProgressIndicator();
        } else if (state is AuthInitial || state is SignupFailedState) {
          return CustomButon(
            text: 'Sign Up',
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                await authcubit.signUp(
                  emailController.text,
                  passwordController.text,
                  nameController.text,
                );
              }
            },
          );
        } else {
          return Text("Error in sign up");
        }
      },
    );
  }
}
