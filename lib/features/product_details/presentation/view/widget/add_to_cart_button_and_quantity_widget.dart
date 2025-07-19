import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/product_details/presentation/manager/add_to_cart_cubit/add_to_cart_cubit.dart';
import 'package:fasila/features/product_details/presentation/manager/quantity_cubit/quantity_cubit.dart';
import 'package:fasila/features/product_details/presentation/view/widget/add_to_cart_button_widget.dart';
import 'package:fasila/features/product_details/presentation/view/widget/quantity_snakbar_widget.dart';
import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddToCartButtonAndQuantityWidget extends StatelessWidget {
  const AddToCartButtonAndQuantityWidget({super.key, required this.productModel}); 
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuantityCubit, int>(
      builder: (context, state) {
        return Row(
          children: [
            BlocProvider(
              create: (context) => AddToCartCubit(),
              child: AddToCartButtonWidget(
                quantity: state + 1,
                productModel: productModel,
              ),
            ),
            const SizedBox(width: 10),
            InkWell(
              onTap: () {
                QuantitySnakbarWidget.show(context: context);
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: context.appColors.teal, width: 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("QTY", style: AppStyles.textStyle16Teal(context)),
                    Text(
                      "${state + 1}",
                      style: AppStyles.textStyle16Teal(context),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
