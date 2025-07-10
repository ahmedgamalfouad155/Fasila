
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/planet_details/presentation/view/widgets/image_planet_details_widget.dart';
import 'package:flutter/material.dart';

class ImageCategoryDetailsWidget extends StatelessWidget {
  const ImageCategoryDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 5,
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: 5,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: context.appColors.offWhite, 
        boxShadow: [
          BoxShadow(
            color: context.appColors.grey,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ImagePlanetDetailsWidget(),
    );
  }
}
