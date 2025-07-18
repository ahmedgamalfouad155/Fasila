import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:fasila/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginButonSectionWidget extends StatelessWidget {
  const LoginButonSectionWidget({
    super.key,
    required this.formKey,
    required this.passwordController,
    required this.emailController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController passwordController;
  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    final authcubit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      bloc: authcubit,
      listener: (context, state) {
        if (state is LoginSuccessState) {
          (context).go(AppRouter.kHomeView);
          passwordController.clear();
          emailController.clear();
        } else if (state is LoginFailedState) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("error in login")));
        }
      },
      builder: (context, state) {
        if (state is LoginLoadingState) {
          return const CircularProgressIndicator();
        } else if (state is AuthInitial) {
          return CustomButon(
            text: 'Login',
            onPressed: () async {
              if (formKey.currentState!.validate()) {
                await authcubit.login(
                  emailController.text,
                  passwordController.text,
                );
              }
            },
          );
        }
        return Text('error in authentication');
      },
    );
  }
}
