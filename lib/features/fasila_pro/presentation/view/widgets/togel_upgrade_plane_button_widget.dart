import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/fasila_pro/presentation/manager/fasila_pro_cubit/fasila_pro_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TogelUpgradePlaneButtonWidget extends StatelessWidget {
  const TogelUpgradePlaneButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.watch<FasilaProCubit>().state;
    final selectedIndex = selectedTab == FasilaProTogelTap.monthly ? 0 : 1;

    return Center(
      child: ToggleButtons(
        isSelected: [selectedIndex == 0, selectedIndex == 1],
        onPressed: (index) {
          final cubit = context.read<FasilaProCubit>();
          cubit.selectTab(
            index == 0 ? FasilaProTogelTap.monthly : FasilaProTogelTap.yearly,
          );
        },
        borderRadius: BorderRadius.circular(10),
        selectedColor: context.appColors.white,
        color: context.appColors.black,
        fillColor: context.appColors.teal,
        borderColor: context.appColors.grey,
        selectedBorderColor: context.appColors.teal,
        constraints: const BoxConstraints(minHeight: 40, minWidth: 140),
        children: const [Text('Monthly'), Text('Yearly')],
      ),
    );
  }
}
