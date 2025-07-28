import 'package:fasila/core/logic/search_cubit.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/profile/presentation/manager/language_cubit/language_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextFormFieldWidget extends StatelessWidget {
  const CustomSearchTextFormFieldWidget({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    final currentLang = context.watch<LanguageCubit>().state.languageCode;
    TextEditingController controller = TextEditingController();
    return Container(
      decoration: BoxDecoration(
        borderRadius: currentLang == 'en'
            ? BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              )
            : BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
        boxShadow: [
          BoxShadow(
            color: context.appColors.teal.withAlpha((1 * 150).toInt()),
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        cursorColor: context.appColors.teal,
        onChanged: (v) {
          context.read<SearchCubit>().updateQuery(controller.text);
        },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppStyles.textStyle16Black(
            context,
          ).copyWith(color: context.appColors.grey),
          fillColor: context.appColors.offWhite,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: currentLang == 'en'
                ? BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  )
                : BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
            borderSide: BorderSide(color: context.appColors.teal, width: 1.2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: currentLang == 'en'
                ? BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  )
                : BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
            borderSide: BorderSide(color: context.appColors.teal, width: 1.5),
          ),
        ),
      ),
    );
  }
}
