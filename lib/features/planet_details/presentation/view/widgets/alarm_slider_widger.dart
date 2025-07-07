
import 'package:fasila/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AlarmSliderWidget extends StatelessWidget {
  const AlarmSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: 1.7,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 1),
        activeTrackColor: context.appColors.teal,
        inactiveTrackColor: context.appColors.grey,
        thumbColor: context.appColors.teal,
      ),
      child: Slider(
        value: 0.5,
        onChanged: (value) {
          // Handle change
        },
        min: 0,
        max: 1,
      ),
    );
  }
}
