
import 'package:fasila/core/widgets/default_button_widget.dart';
import 'package:fasila/features/cart/presentation/manager/product_counter_cubit/product_counter_cubit.dart';
import 'package:fasila/features/cart/presentation/view/widget/count_of_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeleteAndFavoriteAndQuantityButtonSection extends StatelessWidget {
  const DeleteAndFavoriteAndQuantityButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
