import 'package:fasila/features/category_details/presentation/view/widget/planet_guide_content_widget.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';

class PlanetGuideButtonTogelWidget extends StatelessWidget {
  final List<String> filters = ['Planting', 'Care', 'Diseases'];

  PlanetGuideButtonTogelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: context.appColors.offWhite,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: context.appColors.grey,
            blurRadius: 6,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: BlocBuilder<FilterCubit, int>(
        builder: (context, selectedIndex) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
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
                const SizedBox(height: 10),

                Divider(
                  indent: 10,
                  endIndent: 10,
                  color: context.appColors.teal,
                  thickness: 2,
                  height: 1,
                ),

                PlantGuideContentWidget(),
              ],
            ),
          );
        },
      ),
    );
  }
}
