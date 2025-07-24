import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/customs_box_decoratino.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/category_details/presentation/view/widget/planet_name_text_widget.dart';
import 'package:fasila/features/category_details/presentation/view/widget/share_and_favorite_planet_widget.dart';
import 'package:flutter/material.dart';

class ImageCategoryDetailsWidget extends StatelessWidget {
  const ImageCategoryDetailsWidget({super.key, required this.planetModel});
  final PlanetModel planetModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
      decoration:CustomsBoxDecoration(). defaultBoxDecoration(context),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: context.appColors.white,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: planetModel.imageUrl,
                // fit: BoxFit.cover,
              ),
            ),
          ),
          ShareAndFavoritePlanetWidget(
            planetModel: planetModel,
          ),
          PlanetNameTextWidget(plantName: planetModel.name),
        ],
      ),
    );
  }
}
