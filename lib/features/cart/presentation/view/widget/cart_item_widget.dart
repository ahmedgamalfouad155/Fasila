import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/cart/presentation/manager/add_to_cart_cubit/product_counter_cubit.dart';
import 'package:fasila/features/cart/presentation/view/widget/count_of_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return Container(
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
              BlocProvider(
                create: (context) => ProductCounterCubit(),
                child: CountOfProdutWidget(
                  width: MediaQuery.of(context).size.width / 4,
                ),
              ),

              DefaultButtonWidget(
                borderRadius: BorderRadius.circular(10),
                text: "Delete",
                onPressed: () {},
                width: MediaQuery.of(context).size.width / 4,
                height: 40,
              ),
              DefaultButtonWidget(
                borderRadius: BorderRadius.circular(10),
                text: "Favorite",
                onPressed: () {},
                width: MediaQuery.of(context).size.width / 4,
                height: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
