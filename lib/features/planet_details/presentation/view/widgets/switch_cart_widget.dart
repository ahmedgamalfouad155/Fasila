// lib/features/plant_details/widgets/switch_card_widget.dart
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/planet_details/presentation/manager/switch_cubit/switch_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchCardWidget extends StatelessWidget {
  final String title;
  final Widget icon;
  final bool initialValue;
  final VoidCallback? onEditPressed;
  final String discribtion;

  const SwitchCardWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.discribtion,
    this.initialValue = false,
    this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SwitchCardCubit(initial: initialValue),
      child: BlocBuilder<SwitchCardCubit, bool>(
        builder: (context, isOn) {
          final cubit = context.read<SwitchCardCubit>();
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: context.appColors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: context.appColors.grey,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    icon,
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.edit_outlined,
                      size: 25,
                      color: context.appColors.teal,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      discribtion,
                      style: AppStyles.textStyle14(
                        context,
                      ).copyWith(color: context.appColors.grey),
                    ),
                    Transform.scale(
                      scale: 0.7,
                      child: Switch(
                        value: isOn,
                        onChanged: cubit.set,
                        activeColor: context.appColors.offWhite,
                        activeTrackColor: context.appColors.teal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
