import 'package:fasila/features/favorites/presentation/manager/favorite_product_cubit/favorire_product_cubit.dart';
import 'package:fasila/features/favorites/presentation/view/widgets/favorite_product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListOfFavoriteProductItemWidget extends StatefulWidget {
  const ListOfFavoriteProductItemWidget({super.key, required this.category});
  final String category;

  @override
  State<ListOfFavoriteProductItemWidget> createState() =>
      _ListOfFavoriteProductItemWidgetState();
}

class _ListOfFavoriteProductItemWidgetState
    extends State<ListOfFavoriteProductItemWidget> {
  late final FavorireProductCubit _cubit;

  @override
  void initState() {
    _cubit = FavorireProductCubit();
    _cubit.getAllFavoriteProducts();
    _cubit.getFavoriteProductsDependedOnCategoryName(
      categoryName: widget.category,
    );
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ListOfFavoriteProductItemWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.category != widget.category) {
      if (widget.category == 'All') {
        _cubit.getAllFavoriteProducts();
      } else {
        _cubit.getFavoriteProductsDependedOnCategoryName(
          categoryName: widget.category,
        );
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
      child: BlocBuilder<FavorireProductCubit, FavorireProductState>(
        builder: (context, state) {
          if (state is FavorireProductLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is FavorireProductFailedState) {
            return Text(state.error);
          } else if (state is FavorireProductSuccessState) {
            return SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final item = state.favoriteProducts[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: FavoriteProductItemWidget(product: item),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                itemCount: state.favoriteProducts.length,
              ),
            );
          } else {
            return Text("error");
          }
        },
      ),
    );
  }
}
