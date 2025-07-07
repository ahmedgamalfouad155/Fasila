import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';

class CustomLocationFieldWidget extends StatelessWidget {
  const CustomLocationFieldWidget({
    super.key,
    required this.hintText,
    this.controller,
    this.keyboardType,
  });

  final String hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.appColors.offWhite,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: context.appColors.grey,
            blurRadius: 6, // 👈 نعومة الشادو
            offset: const Offset(0, 3), // 👈 الاتجاه للأسفل
          ),
        ],
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: controller,
        cursorColor: context.appColors.teal,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your $hintText';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppStyles.textStyle16Black(
            context,
          ).copyWith(color: context.appColors.grey),
          fillColor: context.appColors.offWhite,
          filled: true,
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(5),
          //   borderSide: BorderSide(color: context.appColors.teal),
          // ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 14,
          ),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: context.appColors.teal),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: context.appColors.teal),
          ),
        ),
      ),
    );
  }
}
