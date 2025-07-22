import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/planet_details/data/constant_planet_details.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/weeks_snakbar_widget.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeeksWidget extends StatelessWidget {
  const WeeksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final weekIndex = context.watch<FilterCubit>().state;
    return InkWell(
      onTap: () {
        WeeksSnackBarWidget.show(
          context: context,
          filterCubit: context.read<FilterCubit>(),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '(${ConstantPlanetDetails().weeks[weekIndex]})',
            style: AppStyles.textStyle16Teal(
              context,
            ).copyWith(fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: context.appColors.teal,
            size: 20,
          ),
        ],
      ),
    );
  }
}
