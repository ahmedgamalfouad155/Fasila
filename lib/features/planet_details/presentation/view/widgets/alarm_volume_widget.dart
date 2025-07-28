import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/alarm_slider_widger.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/cupertino.dart';

class AlarmVolumeWidget extends StatelessWidget {
  const AlarmVolumeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            S.of(context).alarmVolume,
          style: AppStyles.textStyle16Teal(
            context,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        AlarmSliderWidget(),
      ],
    );
  }
}
