import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/profile/presentation/manager/them_cubit/them_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ModeOptionWidget extends StatelessWidget {
  const ModeOptionWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeCubit>().state == ThemeMode.dark;

    return Card(
      elevation: 4,
      color: context.appColors.offWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.brightness_6_outlined,
              color: Color(0xff076B5F),
              size: 30,
            ),
            SizedBox(width: 15),
            Text("Mode", style: AppStyles.textStyle18(context)),

            Spacer(),
            Icon(Icons.light_mode, size: 20, color: context.appColors.teal),
            Transform.scale(
              scale: .8,
              child: Switch(
                value: isDark,
                onChanged: (value) {
                  context.read<ThemeCubit>().toggleTheme(value);
                },
                activeColor: context.appColors.white,
                activeTrackColor: context.appColors.teal,
                inactiveThumbColor: context.appColors.white,
                inactiveTrackColor: context.appColors.teal,
              ),
            ),
            Icon(Icons.dark_mode, size: 20, color: context.appColors.teal),
          ],
        ),
      ),
    );
  }
}
