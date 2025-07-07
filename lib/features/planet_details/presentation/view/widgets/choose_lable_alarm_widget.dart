
import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/choose_lable_alarm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChooseLableAlarmWidget extends StatelessWidget {
  const ChooseLableAlarmWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ChooseLableAlarmCardWidget(
      title: 'Choose the Label',
      details: SizedBox(
        height: MediaQuery.of(context).size.height / 4.5,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 2.6,
          ),
          itemCount: 6,
          itemBuilder: (context, index) => DefaultButtonWidget(
            text: 'water',
            onPressed: () {},
            borderRadius: BorderRadius.circular(10),
            bacgrouncColor: context.appColors.offWhite,
            textColor: context.appColors.teal,
            icon: SvgPicture.network(AppImages.waterImage),
          ),
        ),
      ),
    );
  }
}
