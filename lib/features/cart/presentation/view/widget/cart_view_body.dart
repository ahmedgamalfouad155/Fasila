import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/widgets/custom_emty_page_widget.dart';
import 'package:fasila/features/cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:fasila/features/cart/presentation/manager/cart_cubit/cart_state.dart';
import 'package:fasila/features/cart/presentation/view/widget/checkout_and_add_product_button_widget.dart';
import 'package:fasila/features/cart/presentation/view/widget/list_of_cart_item_widget.dart';
import 'package:fasila/features/cart/presentation/view/widget/subtotal_cart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cartCubit = context.read<CartCubit>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<CartCubit, CartState>(
        bloc: cartCubit,
        builder: (context, state) {
          if (state is CartLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is CartFailedState) {
            return Text(state.error);
          } else if (state is CartSuccsessState) {
            return state.myProductsCart.isNotEmpty
                ? Scaffold(
                    bottomNavigationBar: CheckoutAndAddProductButtonsWidget(
                      productsCart: state.myProductsCart,
                    ),
                    body: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListOfCartItemsWidget(
                            myProductsCart: state.myProductsCart,
                          ),
                          const SizedBox(height: 10),
                          SubtotalCartItemsWidget(
                            proucts: state.myProductsCart,
                          ),
                        ],
                      ),
                    ),
                  )
                : CustomEmptyPage(
                    image: AppImages.myPlanetFruit1Image,
                    title: "You Have No Products In Your Cart",
                    subTitle: 'Add Products To Your Cart',
                  );
          } else {
            return const Text("Something went wrong.");
          }
        },
      ),
    );
  }
}
