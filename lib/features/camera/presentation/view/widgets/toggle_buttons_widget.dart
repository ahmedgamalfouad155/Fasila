import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/camera/presentation/manager/tmvtab_cubit/tmvtab_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleButtonsWidget extends StatelessWidget {
  const ToggleButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.watch<TMVTabCubit>().state;
    final selectedIndex = selectedTab == TMVTab.about ? 0 : 1;

    return Center(
      child: ToggleButtons(
        isSelected: [selectedIndex == 0, selectedIndex == 1],
        onPressed: (index) {
          final cubit = context.read<TMVTabCubit>();
          cubit.selectTab(index == 0 ? TMVTab.about : TMVTab.healthCare);
        },
        borderRadius: BorderRadius.circular(24),
        selectedColor: Colors.white,
        color: context.appColors.black,
        fillColor: context.appColors.teal,
        borderColor: context.appColors.grey,
        selectedBorderColor: context.appColors.teal,
        constraints: const BoxConstraints(minHeight: 40, minWidth: 140),
        children: const [Text('About The Disease'), Text('Health Care')],
      ),
    );
  }
}
