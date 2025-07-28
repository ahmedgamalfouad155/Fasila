import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/home/presentation/view/widgets/home_category_typy_widget.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';

class ListOfExploreHomeWidget extends StatelessWidget {
  const ListOfExploreHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      AppImages.explore1Image,
      AppImages.explore2Image,
      AppImages.explore3Image,
      AppImages.explore4Image,
    ];
    final List<String> titles = [
      S.of(context).vegetables,
      S.of(context).fruits,
      S.of(context).leavyPlant,
      S.of(context).ornamental,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).explore,
          style: AppStyles.textStyle16Teal(context),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: MediaQuery.of(context).size.height / 7,
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => HomeCategoryTypeWidget(
              image: images[index],
              title: titles[index],
              height: 60,
              width: MediaQuery.of(context).size.width / 5,
              bacgrouncColor: context.appColors.offWhite,
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 15),
            itemCount: 4,
          ),
        ),
      ],
    );
  }
}
