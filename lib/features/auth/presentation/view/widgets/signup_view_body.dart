import 'package:fasila/features/auth/presentation/manager/password_validation_cubit.dart';
import 'package:fasila/features/auth/presentation/view/widgets/auth_heder_text_widget.dart';
import 'package:fasila/features/auth/presentation/view/widgets/signup_button_section_widget.dart';
import 'package:fasila/features/auth/presentation/view/widgets/signup_fields_section_widget.dart';
import 'package:fasila/features/auth/presentation/view/widgets/signup_role_section_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      padding: const EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 15),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthHederTextWidget(
                title: 'Create account',
                subTitle: 'Welcome! Sign up to get started',
              ),
              const SizedBox(height: 30),
              SignupFieldsSectionWidget(
                nameController: nameController,
                emailController: emailController,
                passwordController: passwordController,
                confirmPasswordController: confirmPasswordController,
              ),
              const SizedBox(height: 16),
              BlocProvider(
                create: (context) =>  PasswordValidationCubit(),
                child: SignupRoleSectionWidget(
                  passwordController: passwordController,
                ),
              ),
              SignupButtonSectionWidget(
                formKey: formKey,
                passwordController: passwordController,
                emailController: emailController,
                nameController: nameController,
                confirmPasswordController: confirmPasswordController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
