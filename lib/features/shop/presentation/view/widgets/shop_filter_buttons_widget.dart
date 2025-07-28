import 'package:fasila/core/theme/customs_box_decoratino.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';

class ShopFilterButtonsWidget extends StatelessWidget {
  const ShopFilterButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> filters = [
      S.of(context).all,
      S.of(context).potsAndPlaners,
      S.of(context).gardenSupplies,
      S.of(context).seeds,
      S.of(context).fertilizer,
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: CustomsBoxDecoration().customFiltersBoxDecoration(context),
      child: BlocBuilder<FilterCubit, int>(
        builder: (context, selectedIndex) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(filters.length, (index) {
                final isSelected = selectedIndex == index;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: InkWell(
                    onTap: () {
                      context.read<FilterCubit>().changeFilter(index);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? context.appColors.teal
                            : context.appColors.offWhite,
                        borderRadius: BorderRadius.circular(30),
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
          );
        },
      ),
    );
  }
}
