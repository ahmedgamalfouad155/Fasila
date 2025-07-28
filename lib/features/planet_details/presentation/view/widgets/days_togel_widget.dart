import 'package:fasila/features/planet_details/data/constant_planet_details.dart';
import 'package:fasila/features/planet_details/presentation/manager/weeks_togel_cubit/days_toget_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';

class DaysTogelWidget extends StatelessWidget {
  const DaysTogelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DaysTogetCubit, int>(
      builder: (context, selectedIndex) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              ConstantPlanetDetails(context).days.length,
              (index) {
                final isSelected = selectedIndex == index;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: InkWell(
                    onTap: () {
                      context.read<DaysTogetCubit>().togetBetwenDays(index);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? context.appColors.teal
                            : context.appColors.offWhite,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: context.appColors.teal,
                          width: 1.2,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            ConstantPlanetDetails(context).days[index],
                            style: isSelected
                                ? AppStyles.textStyle14(
                                    context,
                                  ).copyWith(color: context.appColors.white)
                                : AppStyles.textStyle14(
                                    context,
                                  ).copyWith(color: context.appColors.teal),
                          ),
                          Text(
                            ConstantPlanetDetails(context).number[index],
                            style: isSelected
                                ? AppStyles.textStyle14(
                                    context,
                                  ).copyWith(color: context.appColors.white)
                                : AppStyles.textStyle14(
                                    context,
                                  ).copyWith(color: context.appColors.teal),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
