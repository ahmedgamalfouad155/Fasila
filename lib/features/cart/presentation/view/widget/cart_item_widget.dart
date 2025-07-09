import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CachedNetworkImage(imageUrl: image, width: 70),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title, style: AppStyles.textStyle16Teal(context)),

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
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DefaultButtonWidget(
                  icon: Icon(
                    Icons.delete_outline,
                    color: context.appColors.white,
                  ),
                  text: "Delete",
                  onPressed: () {},
                  width: 120,
                  height: 40,
                ),
                DefaultButtonWidget(
                  icon: Icon(Icons.favorite, color: context.appColors.white),
                  text: "Move To Favorite",
                  onPressed: () {},
                  width: 180,
                  height: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
