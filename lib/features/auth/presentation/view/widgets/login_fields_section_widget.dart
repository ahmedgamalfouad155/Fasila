
import 'package:fasila/core/widgets/custom_text_field_widget.dart';
import 'package:fasila/core/widgets/custom_textformfield_widget.dart';
import 'package:flutter/material.dart';

class LoginFieldsSectionWidget extends StatelessWidget {
  const LoginFieldsSectionWidget({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFieldWidget(
          hintText: 'Email',
          controller: emailController,
        ),
        const SizedBox(height: 20),
        CustomTextFormFieldWidget(
          hintText: 'Password',
          controller: passwordController,
        ),
      ],
    );
  }
}
