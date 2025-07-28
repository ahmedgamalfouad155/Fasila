import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/togel_weeks_widget.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeeksSnackBarWidget {
  static void show({
    required BuildContext context,
    required FilterCubit filterCubit,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(days: 1),
        backgroundColor: context.appColors.offWhite,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        behavior: SnackBarBehavior.floating,
        content: BlocProvider.value(
          value: filterCubit,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                    S.of(context).chooseWeek,
                style: AppStyles.textStyle18(context).copyWith(
                  color: context.appColors.teal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              TogelWeeksWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
