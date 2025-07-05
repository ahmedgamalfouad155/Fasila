import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class CustomSearchTextFormFieldWidget extends StatelessWidget {
  const CustomSearchTextFormFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: context.appColors.teal,
      decoration: InputDecoration(
        hintText: "search for your plants",
        hintStyle: AppStyles.textStyle16Black(
          context,
        ).copyWith(color: context.appColors.grey),
        fillColor: context.appColors.offWhite,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          borderSide: BorderSide(color: context.appColors.teal, width: 1.2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          borderSide: BorderSide(color: context.appColors.teal, width: 1.5),
        ),
      ),
    );
  }
}
