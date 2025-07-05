import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:fasila/core/widgets/custom_text_field_widget.dart';
import 'package:fasila/core/widgets/custom_textformfield_widget.dart';
import 'package:fasila/features/auth/presentation/view/widgets/divider_with_text_widget.dart';
import 'package:fasila/features/auth/presentation/view/widgets/logo_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Login here', style: AppStyles.textStyle24(context)),
              const SizedBox(height: 10),
              Text(
                'Welcome back you’ve been missed!',
                style: AppStyles.textStyle12Grey(
                  context,
                ).copyWith(color: context.appColors.black),
              ),
              const SizedBox(height: 30),
              CustomTextFieldWidget(
                hintText: 'Email',
                controller: emailController,
              ),
              const SizedBox(height: 20),
              CustomTextFormFieldWidget(
                hintText: 'Password',
                controller: passwordController,
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Forgot Password?',
                    style: AppStyles.textStyle12Grey(context),
                  ),
                  Text(
                    'Create New Account',
                    style: AppStyles.textStyle12Grey(context),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const DividerWithTextWidget(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LogoContainerWidget(imagePath: Appimages.googleLogo),
                  const SizedBox(width: 10),
                  LogoContainerWidget(imagePath: Appimages.facebookLogo),
                  const SizedBox(width: 10),
                  LogoContainerWidget(imagePath: Appimages.appleLogo),
                ],
              ),
              const SizedBox(height: 50),
              CustomButon(
                text: 'Login',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    (context).go(AppRouter.kNavBarView);
                    passwordController.clear();
                    emailController.clear();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
