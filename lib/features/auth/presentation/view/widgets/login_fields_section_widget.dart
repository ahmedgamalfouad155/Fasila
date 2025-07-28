
import 'package:fasila/core/widgets/custom_text_field_widget.dart';
import 'package:fasila/core/widgets/custom_textformfield_widget.dart';
import 'package:fasila/generated/l10n.dart';
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
          hintText:   S.of(context).email,
          controller: emailController,
        ),
        const SizedBox(height: 20),
        CustomTextFormFieldWidget(
          hintText:   S.of(context).password,
          controller: passwordController,
        ),
      ],
    );
  }
}
