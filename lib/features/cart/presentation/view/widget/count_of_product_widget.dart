import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/cart/presentation/manager/product_counter_cubit/product_counter_cubit.dart';
import 'package:fasila/features/cart/presentation/manager/product_counter_cubit/product_counter_state.dart';
import 'package:fasila/features/product_details/data/models/save_product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountOfProdutWidget extends StatelessWidget {
  final double width; 
  final SaveProductModel product;
  const CountOfProdutWidget({
    super.key,
    required this.width,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final addToCardCubit = BlocProvider.of<ProductCounterCubit>(context);
    addToCardCubit.quantity =product. quantity.toDouble();
    return BlocBuilder<ProductCounterCubit, ProductCounterState>(
      bloc: addToCardCubit,
      builder: (context, state) {
        if (state is ProductConterInitial ||
            state is ChangeQuantitySuccessState) {
          return Container(
            width: width,
            height: 40,
            decoration: BoxDecoration(
              color: context.appColors.teal,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: context.appColors.white,
                  child: InkWell(
                    onTap: () {
                      addToCardCubit.changeQuantity(
                        addToCardCubit.quantity + 1,
                      );
                      addToCardCubit.updateProductInCart(
                        product.copyWith(
                          quantity: addToCardCubit.quantity,
                          totalPrice: addToCardCubit.quantity * product.price,
                        ),
                      );
                    },
                    child: Icon(
                      Icons.add,
                      color: context.appColors.black,
                      size: 15,
                    ),
                  ),
                ),
                Text(
                  "${addToCardCubit.quantity.toInt()}",
                  style: AppStyles.textStyle14(
                    context,
                  ).copyWith(color: context.appColors.white),
                ),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: context.appColors.white,
                  child: InkWell(
                    onTap: () {
                      if (addToCardCubit.quantity > 1) {
                        addToCardCubit.changeQuantity(
                          addToCardCubit.quantity - 1,
                        );
                        addToCardCubit.updateProductInCart(
                        product.copyWith(
                          quantity: addToCardCubit.quantity,
                          totalPrice: addToCardCubit.quantity * product.price,
                        ),
                      );
                      }
                    },
                    child: Icon(
                      Icons.remove,
                      color: context.appColors.black,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }
}
