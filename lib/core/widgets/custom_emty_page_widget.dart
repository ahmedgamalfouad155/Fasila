import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CustomEmptyPage extends StatelessWidget {
  const CustomEmptyPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });
  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: SvgPicture.asset(image),
        ),
        SizedBox(height: 15),
        Text(
          title,
          style: AppStyles.textStyle20(
            context,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Text(subTitle, style: AppStyles.textStyle16(context)),
        Spacer(),
        CustomButon(
          text: "Custom",
          onPressed: () {
            
          },
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
