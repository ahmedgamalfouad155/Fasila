// care_card_widget.dart
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/planet_details/presentation/manager/planet_info_cart_cubit/planet_info_cart_cubit.dart';
import 'package:fasila/features/planet_details/presentation/manager/planet_info_cart_cubit/planet_info_cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CareCardWidget extends StatelessWidget {
  final String title;
  final Widget icon;
  final Widget details;
  final bool initiallyExpanded;

  const CareCardWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.details,
    this.initiallyExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CareCardCubit(initiallyExpanded: initiallyExpanded),
      child: BlocBuilder<CareCardCubit, CareCardState>(
        builder: (context, state) {
          final cubit = context.read<CareCardCubit>();
          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              color: context.appColors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: context.appColors.grey,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                ListTile(
                  leading: icon,
                  title: Text(
                    title,
                    style: AppStyles.textStyle16Teal(
                      context,
                    ).copyWith(fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                    icon: AnimatedRotation(
                      duration: const Duration(milliseconds: 300),
                      turns: state.isExpanded ? 0.5 : 0.0,
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: context.appColors.teal,
                      ),
                    ),
                    onPressed: cubit.toggleExpanded,
                  ),
                ),
                AnimatedCrossFade(
                  duration: const Duration(milliseconds: 300),
                  firstChild: const SizedBox.shrink(),
                  secondChild: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 10,
                    ),
                    child: details,
                  ),
                  crossFadeState: state.isExpanded
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
