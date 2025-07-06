import 'package:fasila/features/planet_details/presentation/manager/weeks_togel_cubit/weeks_toget_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';

class WeeksTogelWidget extends StatelessWidget {
  final List<String> weeks = ['Sat', 'Sum', 'Mon', 'Thu', 'Wed', 'Tue', 'Fri'];
  final List<String> number = ["1", "2", "3", "4", "5", "6", "7"];

  WeeksTogelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeeksTogetCubit, int>(
      builder: (context, selectedIndex) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(weeks.length, (index) {
              final isSelected = selectedIndex == index;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: InkWell(
                  onTap: () {
                    context.read<WeeksTogetCubit>().togetBetwenWeeks(index);
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
                          weeks[index],
                          style: isSelected
                              ? AppStyles.textStyle14(
                                  context,
                                ).copyWith(color: context.appColors.white)
                              : AppStyles.textStyle14(context),
                        ),
                        Text(
                          number[index],
                          style: isSelected
                              ? AppStyles.textStyle14(
                                  context,
                                ).copyWith(color: context.appColors.white)
                              : AppStyles.textStyle14(context),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
