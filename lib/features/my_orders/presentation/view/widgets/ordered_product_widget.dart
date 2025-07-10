import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/cart/presentation/view/widget/subtotal_option_content_widget.dart';
import 'package:fasila/features/my_orders/presentation/view/widgets/image_and_details_in_order_product_widget.dart';
import 'package:flutter/material.dart';

class OrderedProductsWidget extends StatelessWidget {
  const OrderedProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: context.appColors.offWhite,
        boxShadow: [
          BoxShadow(
            color: context.appColors.grey,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Ordered Products", style: AppStyles.textStyle16Teal(context)),
          const SizedBox(height: 10),
          SubtotalOptionContentWidget(
            title: 'shipment status :',
            price: 'delivered',
          ),
          SubtotalOptionContentWidget(
            title: 'shipment number :',
            price: '741455989965',
          ),
          SubtotalOptionContentWidget(
            title: 'shipment information : ',
            price: 'Aramex',
          ),

          SubtotalOptionContentWidget(
            title: 'paying cash on delivery : ',
            price: '549.00EGP',
          ),

          const SizedBox(height: 15),
          ImageAndDetailsInOrderedProductWidget(
            image: AppImages.lastest1Image,
            title: 'Agriculture tools',
            subTitle:
                '3 tools that help in agriculture ( fork, scoop, pruning tool)',
            price: '249.00 EGP',
          ),
          const SizedBox(height: 10),
          ImageAndDetailsInOrderedProductWidget(
            image: AppImages.lastest2Image,
            title: 'Stand hanging pot',
            subTitle: 'Standard black plastic hanging pot',
            price: '149.00 EGP',
          ),
          const SizedBox(height: 10),
          ImageAndDetailsInOrderedProductWidget(
            image: AppImages.lastest3Image,
            title: 'Agriculture tools',
            subTitle:
                '3 tools that help in agriculture ( fork, scoop, pruning tool)',
            price: '249.00 EGP',
          ),
        ],
      ),
    );
  }
}
