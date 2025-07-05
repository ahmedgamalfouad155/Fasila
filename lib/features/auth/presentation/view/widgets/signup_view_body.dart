import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:fasila/core/widgets/custom_text_field_widget.dart';
import 'package:fasila/core/widgets/custom_textformfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    passwordController.dispose();
    emailController.dispose();
    nameController.dispose();
    confirmPasswordController.dispose();
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
              Text('Create account', style: AppStyles.textStyle24(context)),
              const SizedBox(height: 10),
              Text(
                'Welcome! Sign up to get started',
                style: AppStyles.textStyle12Grey(
                  context,
                ).copyWith(color: context.appColors.black),
              ),
              const SizedBox(height: 30),
              CustomTextFieldWidget(
                hintText: 'Name',
                controller: nameController,
              ),
              const SizedBox(height: 16),
              CustomTextFieldWidget(
                hintText: 'Email',
                controller: emailController,
              ),
              const SizedBox(height: 16),
              CustomTextFormFieldWidget(
                hintText: 'Password',
                controller: passwordController,
              ),
              const SizedBox(height: 16),
              CustomTextFormFieldWidget(
                hintText: 'Confirm Password',
                controller: confirmPasswordController,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Already have an account ?',
                    style: AppStyles.textStyle16Black(context),
                  ),
                ],
              ),
              const SizedBox(height: 50),

              CustomButon(
                text: 'Sign Up',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    (context).go(AppRouter.kNavBarView);
                    passwordController.clear();
                    emailController.clear();
                    nameController.clear();
                    confirmPasswordController.clear();
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
