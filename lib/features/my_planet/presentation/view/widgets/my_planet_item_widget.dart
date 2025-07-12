import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/my_planet/data/models/my_planet_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyPlanetItemWidget extends StatelessWidget {
  const MyPlanetItemWidget({
    super.key,
    required this.myPlanetModel,
  });
  final MyPlanetModel myPlanetModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kPlanetDetailsView);
      },
      child: Container(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 5,
        decoration: BoxDecoration(
          color: context.appColors.offWhite,
          borderRadius: BorderRadius.all(Radius.circular(16)),
          boxShadow: [
            BoxShadow(
              color: context.appColors.grey.withAlpha((0.4 * 255).toInt()),
              offset: const Offset(-2, 4),
              blurRadius: 6,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.width / 4,
              decoration: BoxDecoration(
                color: context.appColors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: context.appColors.teal, width: 1),
                boxShadow: [
                  BoxShadow(
                    color: context.appColors.grey,
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),

              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(imageUrl: myPlanetModel.image),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    myPlanetModel.title,
                    style: AppStyles.textStyle16Teal(context),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        myPlanetModel.type,
                        style: AppStyles.textStyle18(context),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: context.appColors.teal,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
