import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/category_details/presentation/view/widget/planet_favorite_icon_widget.dart';
import 'package:flutter/material.dart';

class ShareAndFavoritePlanetWidget extends StatelessWidget {
  const ShareAndFavoritePlanetWidget({super.key, }); 

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 10,
      child: Column(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: context.appColors.offWhite,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: context.appColors.grey,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Icon(Icons.share, color: context.appColors.teal, size: 15),
          ),
          const SizedBox(height: 10),
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: context.appColors.offWhite,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: context.appColors.grey,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: PlanetFavoriteIconWidget(),
          ),
        ],
      ),
    );
  }
}
