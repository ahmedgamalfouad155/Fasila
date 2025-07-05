import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/home/presentation/view/widgets/home_category_typy_widget.dart';
import 'package:flutter/material.dart';

class ListOfExploreHomeWidget extends StatelessWidget {
  const ListOfExploreHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 6,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => HomeCategoryTypeWidget(
          image: Appimages.notificationIcon,
          title: 'Vegetable',
          height: 60,
          bacgrouncColor: context.appColors.offWhite,
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemCount: 5,
      ),
    );
  }
}
