import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';

class MyPlanetFilterButtonsWidget extends StatelessWidget {
  const MyPlanetFilterButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> filters = [
      S.of(context).all,
      S.of(context).vegetables,
      S.of(context).fruits,
      S.of(context).leavyPlant,
        S.of(context).ornamental,
    ];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: context.appColors.white,
        boxShadow: [
          BoxShadow(
            color: context.appColors.grey.withAlpha((0.4 * 255).toInt()),
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: BlocBuilder<FilterCubit, int>(
        builder: (context, selectedIndex) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: List.generate(filters.length, (index) {
                    final isSelected = selectedIndex == index;
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: InkWell(
                        onTap: () {
                          context.read<FilterCubit>().changeFilter(index);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? context.appColors.teal
                                : context.appColors.offWhite,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: context.appColors.teal,
                              width: 1.2,
                            ),
                          ),
                          child: Text(
                            filters[index],
                            style: isSelected
                                ? AppStyles.textStyle14(
                                    context,
                                  ).copyWith(color: context.appColors.white)
                                : AppStyles.textStyle14(context),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
