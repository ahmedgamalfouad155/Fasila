import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:flutter/material.dart';

class SelectLocationViewBody extends StatelessWidget {
  const SelectLocationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.6,
          child: Image.asset(AppImages.locationImage),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CustomButon(text: "Save Address", onPressed: () {}),
              const SizedBox(height: 10),
              CustomButon(
                text: "Reset Location",
                onPressed: () {},
                bacgrouncColor: context.appColors.white,
                textColor: context.appColors.teal,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
