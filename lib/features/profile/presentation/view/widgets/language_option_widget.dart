import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/profile/presentation/manager/language_cubit/language_cubit.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageOptionWidget extends StatelessWidget {
  const LanguageOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final currentLang = context.watch<LanguageCubit>().state.languageCode;

    return Card(
      elevation: 4,
      color: context.appColors.offWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.public, color: Color(0xff076B5F), size: 30),
            const SizedBox(width: 15),
            Text(
              S.of(context).language,
              style: AppStyles.textStyle16Teal(
                context,
              ).copyWith(fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Text(
              "En",
              style: AppStyles.textStyle16Teal(
                context,
              ).copyWith(fontWeight: FontWeight.bold),
            ),
            Transform.scale(
              scale: 0.8,
              child: Switch(
                value: currentLang == 'ar',
                onChanged: (value) {
                  context.read<LanguageCubit>().toggleLanguage();
                },
                activeColor: context.appColors.white,
                activeTrackColor: context.appColors.teal,
                inactiveThumbColor: context.appColors.white,
                inactiveTrackColor: context.appColors.teal,
              ),
            ),
            Text(
              "ع",
              style: AppStyles.textStyle20(context).copyWith(
                fontWeight: FontWeight.bold,
                color: context.appColors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
