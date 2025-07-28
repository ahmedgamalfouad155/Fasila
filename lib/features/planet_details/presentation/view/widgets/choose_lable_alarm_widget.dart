import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/planet_details/data/constant_planet_details.dart';
import 'package:fasila/features/planet_details/presentation/manager/weeks_togel_cubit/days_toget_cubit.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/choose_lable_alarm.dart';
import 'package:fasila/features/shop/presentation/manager/filter_cubit.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ChooseLableAlarmWidget extends StatelessWidget {
  const ChooseLableAlarmWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChooseLableAlarmCardWidget(
      title: S.of(context).chooseTheLable,
      details: SizedBox(
        height: MediaQuery.of(context).size.height / 4.5,
        child: BlocBuilder<FilterCubit, int>(
          builder: (context, selectedIndex) {
            return GridView.builder(
              itemCount: ConstantPlanetDetails(context).options.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 3,
              ),
              itemBuilder: (context, index) {
                final isSelected = selectedIndex == index;
                return InkWell(
                  onTap: () => context.read<FilterCubit>().changeFilter(index),
                  child: Container(
                    decoration: BoxDecoration(
                      color: isSelected
                          ? context.appColors.teal
                          : context.appColors.offWhite,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: context.appColors.teal),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.network(
                          ConstantPlanetDetails(context).images[index],
                        ),
                        const SizedBox(width: 5),
                        Text(
                          ConstantPlanetDetails(context).options[index],
                          style: AppStyles.textStyle14(context).copyWith(
                            color: isSelected
                                ? context.appColors.white
                                : context.appColors.teal,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
