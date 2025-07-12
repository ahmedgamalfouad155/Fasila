import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/planet_details/presentation/manager/togel_cubit/details_togel_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TogelButtonDetailsWidget extends StatelessWidget {
  const TogelButtonDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.watch<DetailsTogelCubit>().state;
    final selectedIndex = selectedTab == FavoriteTogelTap.plantInfo ? 0 : 1;

    return Center(
      child: ToggleButtons(
        isSelected: [selectedIndex == 0, selectedIndex == 1],
        onPressed: (index) {
          final cubit = context.read<DetailsTogelCubit>();
          cubit.selectTab(
            index == 0
                ? FavoriteTogelTap.plantInfo
                : FavoriteTogelTap.reminders,
          );
        },
        borderRadius: BorderRadius.circular(10),
        selectedColor: context.appColors.white,
        color: context.appColors.teal,
        fillColor: context.appColors.teal,
        borderColor: context.appColors.grey,
        selectedBorderColor: context.appColors.teal,
        constraints: const BoxConstraints(minHeight: 40, minWidth: 160),
        children: const [Text('Plant Info'), Text('Reminders')],
      ),
    );
  }
}
