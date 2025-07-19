import 'package:fasila/features/shop/presentation/manager/product_cubit/product_cubit.dart';
import 'package:fasila/features/shop/presentation/view/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfProductItemsWidgets extends StatefulWidget {
  const ListOfProductItemsWidgets({super.key, required this.category});

  final String category;

  @override
  State<ListOfProductItemsWidgets> createState() =>
      _ListOfProductItemsWidgetsState();
}

class _ListOfProductItemsWidgetsState extends State<ListOfProductItemsWidgets> {
  late final ProductCubit _cubit;
  @override
  void initState() {
    super.initState();
    _cubit = ProductCubit();
    _cubit.getAllProducts();
    _cubit.getProductsDependedOnCategoryName(categoryName: widget.category);
  }

  @override
  void didUpdateWidget(covariant ListOfProductItemsWidgets oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.category != widget.category) {
      if (widget.category == 'All') {
        _cubit.getAllProducts();
      } else {
        _cubit.getProductsDependedOnCategoryName(categoryName: widget.category);
      }
    }
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is ProductLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProductFailedState) {
            return Text(state.error);
          } else if (state is ProductSuccessState) {
            return Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final product = state.products[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ProductItemWidget(product: product),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                itemCount: state.products.length,
              ),
            );
          } else {
            return const Text("Something went wrong.");
          }
        },
      ),
    );
  }
}
