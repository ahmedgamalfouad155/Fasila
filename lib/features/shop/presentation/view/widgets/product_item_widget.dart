import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });
  final String image, title, price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kProductDetailsView);
      },
      child: Container(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 4,
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
            CachedNetworkImage(imageUrl: image),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title, style: AppStyles.textStyle16Teal(context)),

                      Row(
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color: context.appColors.teal,
                          ),
                          Icon(
                            Icons.share_rounded,
                            color: context.appColors.teal,
                          ),
                        ],
                      ),
                    ],
                  ),

                  Text(
                    "While it's always good to get your hands dirty, sometimes you need protection.....",
                    style: AppStyles.textStyle12Grey(context),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  Text(
                    price,
                    style: AppStyles.textStyle16Teal(
                      context,
                    ).copyWith(fontWeight: FontWeight.bold),
                  ),

                  CustomButon(
                    text: "Add To My Cart",
                    onPressed: () {},
                    width: 180,
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
