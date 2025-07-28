import 'package:fasila/features/planet_details/data/constant_planet_details.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';

class TogelWeeksWidget extends StatelessWidget {
  const TogelWeeksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(color: context.appColors.offWhite),
      child: BlocBuilder<FilterCubit, int>(
        builder: (context, selectedIndex) {
          return Column(
            children: List.generate(
              ConstantPlanetDetails(context).weeks.length,
              (index) {
                final isSelected = selectedIndex == index;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: InkWell(
                    onTap: () {
                      context.read<FilterCubit>().changeFilter(index);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
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
                        boxShadow: [
                          BoxShadow(
                            color: context.appColors.grey.withAlpha(
                              (0.4 * 255).toInt(),
                            ),
                            blurRadius: 2,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Text(
                        ConstantPlanetDetails(context).weeks[index],
                        textAlign: TextAlign.center,
                        style: isSelected
                            ? AppStyles.textStyle14(
                                context,
                              ).copyWith(color: context.appColors.white)
                            : AppStyles.textStyle14(
                                context,
                              ).copyWith(color: context.appColors.teal),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
