import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/cart/constants.dart';
import 'package:fasila/features/cart/data/models/amount_model/amount_model.dart';
import 'package:fasila/features/cart/data/models/amount_model/details.model.dart';
import 'package:fasila/features/cart/data/models/item_list_model/item.dart';
import 'package:fasila/features/cart/data/models/item_list_model/item_list_model.dart';
import 'package:fasila/features/cart/presentation/view/widget/add_product_button_widget.dart';
import 'package:fasila/features/product_details/data/models/save_product_model.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

class CheckoutAndAddProductButtonsWidget extends StatelessWidget {
  const CheckoutAndAddProductButtonsWidget({
    super.key,
    required this.productsCart,
  });
  final List<SaveProductModel> productsCart;

  @override
  Widget build(BuildContext context) {
    num totalP = 0;
    for (var element in productsCart) {
      totalP = totalP + element.totalPrice;
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DefaultButtonWidget(
          text:   S.of(context).checkout,
          onPressed: () {
            var amount = AmountModel(
              total: "$totalP",
              currency: "USD",
              details: DetailsAmountModel(
                shipping: "0",
                shippingDiscount: 0,
                subtotal: "$totalP",
              ),
            );
            List<OrderItemModel> orders = [];
            for (var element in productsCart) {
              orders.add(
                OrderItemModel(
                  name: element.name,
                  quantity: (element.quantity).toInt(),
                  price: "${element.price}",
                  currency: "USD",
                ),
              );
            }

            var itemList = ItemListModel(orders: orders);

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => PaypalCheckoutView(
                  sandboxMode: true,
                  clientId: CartConstants().paypalClientId,
                  secretKey: CartConstants().paypalSecretKey,
                  transactions: [
                    {
                      "amount": amount.toJson(),
                      "description": "The payment transaction description.",
                      "item_list": itemList.toJson(),
                    },
                  ],
                  note: "Contact us for any questions on your order.",
                  onSuccess: (Map params) async {
                      Navigator.pop(context);
                  },
                  onError: (error) {
                    Navigator.pop(context);
                  },
                  onCancel: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            );
          },
          width: MediaQuery.of(context).size.width / 1.8,
          height: 50,
          borderRadius: BorderRadius.circular(10),
        ),
        AddProductButtonWidget(),
      ],
    );
  }
}
