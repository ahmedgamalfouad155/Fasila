import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/customs_box_decoratino.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/product_details/presentation/manager/add_to_cart_cubit/add_to_cart_cubit.dart';
import 'package:fasila/features/product_details/presentation/manager/prouduct_favorite_cubit/product_favorite_cubit.dart';
import 'package:fasila/features/product_details/presentation/view/widget/add_to_cart_button_widget.dart';
import 'package:fasila/features/product_details/presentation/view/widget/product_favorite_icon_widget.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(
          context,
        ).push(AppRouter.kProductDetailsView, extra: product);
      },
      child: Container(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 4,
        decoration: CustomsBoxDecoration().defaultBoxDecoration(context),
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
                child: CachedNetworkImage(
                  imageUrl: product.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name,
                        style: AppStyles.textStyle16Teal(context),
                      ),

                      Row(
                        children: [
                          BlocProvider(
                            create: (context) => ProductFavoriteCubit(),
                            child: ProductFavoriteIconWidget(
                              productModel: product,
                              iconSize: 23,
                            ),
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
                    product.discription,
                    style: AppStyles.textStyle12Grey(context),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  Text(
                    "${product.price.toDouble()} EGP",
                    style: AppStyles.textStyle16Teal(
                      context,
                    ).copyWith(fontWeight: FontWeight.bold),
                  ),
                  BlocProvider(
                    create: (context) => AddToCartCubit(),
                    child: AddToCartButtonWidget(
                      quantity: 1,
                      productModel: product,
                      isFromProductItemWidget: true,
                    ),
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
