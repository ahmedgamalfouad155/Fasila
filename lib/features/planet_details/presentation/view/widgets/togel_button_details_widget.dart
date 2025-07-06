import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/planet_details/presentation/manager/togel_cubit/togel_cubit.dart'; import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TogelButtonDetailsWidget extends StatelessWidget {
  const TogelButtonDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.watch<TogelCubit>().state;
    final selectedIndex = selectedTab == TogelTap.plantInfo ? 0 : 1;

    return Center(
      child: ToggleButtons(
        isSelected: [selectedIndex == 0, selectedIndex == 1],
        onPressed: (index) {
          final cubit = context.read<TogelCubit>();
          cubit.selectTab(index == 0 ? TogelTap.plantInfo : TogelTap.reminders);
        },
        borderRadius: BorderRadius.circular(24),
        selectedColor: context.appColors.white,
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
