import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/cart/presentation/manager/cart_cubit/cart_cubit.dart';
import 'package:fasila/features/cart/presentation/view/widget/cart_view_body.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: context.appColors.teal),
        title: Text(
          S.of(context).cart,
          style: AppStyles.textStyle16Teal(
            context,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocProvider(
        create: (context) => CartCubit(),
        child: CartViewBody(),
      ),
    );
  }
}
