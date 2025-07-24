import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:fasila/core/widgets/custom_snak_bar.dart';
import 'package:fasila/features/product_details/data/models/save_product_model.dart';
import 'package:fasila/features/product_details/presentation/manager/add_to_cart_cubit/add_to_cart_cubit.dart';
import 'package:fasila/features/product_details/presentation/manager/add_to_cart_cubit/add_to_cart_state.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddToCartButtonWidget extends StatelessWidget {
  const AddToCartButtonWidget({
    super.key,
    required this.quantity,
    required this.productModel,
    this.isFromProductItemWidget,
  });

  final num quantity;
  final ProductModel productModel;
  final bool? isFromProductItemWidget;

  @override
  Widget build(BuildContext context) {
    final addToCartCubit = context.read<AddToCartCubit>();
    return BlocConsumer<AddToCartCubit, AddToCartState>(
      bloc: addToCartCubit,
      listener: (context, state) {
        if (state is AddToCartSuccessState) {
          customSnakBar(context, message: "Add to Cart");
        }
      },
      builder: (context, state) {
        if (state is AddToCartLoadingState) {
          return const CircularProgressIndicator();
        } else if (state is AddToCartInitial ||
            state is AddToCartSuccessState) {
          return CustomButon(
            width: isFromProductItemWidget == true
                ? 180
                : MediaQuery.of(context).size.width / 1.4,
            height: isFromProductItemWidget == true ? 40 : null,
            text: "Add To Card",
            onPressed: () {
              addToCartCubit.addProducttoCart(
                SaveProductModel(
                  productId: productModel.id,
                  name: productModel.name,
                  category: productModel.category,
                  imageUrl: productModel.imageUrl,
                  price: productModel.price,
                  quantity: quantity,
                  discription: productModel.discription,
                  totalPrice: productModel.price * quantity,
                ),
              );
            },
          );
        } else if (state is AddToCartFailedState) {
          return Text(state.error);
        } else {
          return Text("data");
        }
      },
    );
  }
}
