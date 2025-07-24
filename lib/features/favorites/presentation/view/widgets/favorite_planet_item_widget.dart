import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/customs_box_decoratino.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/favorites/presentation/view/widgets/favorite_icon_in_favorite_planet_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FavoritePlanetItemWidget extends StatelessWidget {
  const FavoritePlanetItemWidget({
    super.key,
    required this.planetModel,
    this.button,
  });
  final PlanetModel planetModel;
  final Widget? button;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(
          context,
        ).push(AppRouter.kCategoryDetailsView, extra: planetModel);
      },
      child: Container(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 5,
        decoration:CustomsBoxDecoration(). defaultBoxDecoration(context),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.width / 4,
              decoration:CustomsBoxDecoration(). defaultBoxDecoration(
                context,
                border: true,
                color: context.appColors.white,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(imageUrl: planetModel.imageUrl),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        planetModel.name,
                        style: AppStyles.textStyle16Teal(context),
                      ),

                      Row(
                        children: [
                          FavoriteIconInFavoritePlanetItemWidget(
                            planetModel: planetModel,
                          ),
                          Icon(Icons.share, color: context.appColors.teal),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    planetModel.category,
                    style: AppStyles.textStyle18(context),
                  ),

                  button ?? SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
