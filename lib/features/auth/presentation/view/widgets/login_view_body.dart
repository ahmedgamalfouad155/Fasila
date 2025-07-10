import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:fasila/features/auth/presentation/view/widgets/auth_heder_text_widget.dart';
import 'package:fasila/features/auth/presentation/view/widgets/continue_text_and_social_logo_section_wdget.dart';
import 'package:fasila/features/auth/presentation/view/widgets/forget_and_create_account_text_widget.dart';
import 'package:fasila/features/auth/presentation/view/widgets/login_fields_section_widget.dart';
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
              AuthHederTextWidget(
                title: "Login here",
                subTitle: "Welcome back you’ve been missed!",
              ),
              const SizedBox(height: 30),
              LoginFieldsSectionWidget(
                emailController: emailController,
                passwordController: passwordController,
              ),
              const SizedBox(height: 25),
              ForgetAndCreateAccountTextWidget(),
              const SizedBox(height: 30),
              ContinueTextAndSocialLogoSectionWdiget(),
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
