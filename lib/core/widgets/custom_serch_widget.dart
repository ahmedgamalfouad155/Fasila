import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/custom_search_text_form_field.dart';
import 'package:fasila/features/profile/presentation/manager/language_cubit/language_cubit.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLang = context.watch<LanguageCubit>().state.languageCode;
    return Row(
      children: [
        Container(
          width: 50,
          height: 48,
          decoration: BoxDecoration(
            color: context.appColors.teal,
            borderRadius: currentLang == 'en'
                ? BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
            boxShadow: [
              BoxShadow(
                color: context.appColors.teal.withAlpha((1 * 255).toInt()),
                blurRadius: 3,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Icon(Icons.search, color: context.appColors.white),
        ),
        Expanded(
          child: CustomSearchTextFormFieldWidget(
            hintText: S.of(context).searchForYourProducts,
          ),
        ),
      ],
    );
  }
}
