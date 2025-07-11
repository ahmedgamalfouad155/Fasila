import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/favorites/presentation/manager/favorite_togel_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TogelFavoriteButtonWidet extends StatelessWidget {
  const TogelFavoriteButtonWidet({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.watch<FavoriteTogelCubit>().state;
    final selectedIndex = selectedTab == FavoriteTogelTap.plants ? 0 : 1;

    return Center(
      child: ToggleButtons(
        isSelected: [selectedIndex == 0, selectedIndex == 1],
        onPressed: (index) {
          final cubit = context.read<FavoriteTogelCubit>();
          cubit.selectTab(
            index == 0 ? FavoriteTogelTap.plants : FavoriteTogelTap.products,
          );
        },
        borderRadius: BorderRadius.circular(10),
        selectedColor: context.appColors.white,
        color: context.appColors.black,
        fillColor: context.appColors.teal,
        borderColor: context.appColors.teal,
        selectedBorderColor: context.appColors.teal,
        constraints: const BoxConstraints(minHeight: 40, minWidth: 140),
        children: const [Text('Plants'), Text('Products')],
      ),
    );
  }
}
