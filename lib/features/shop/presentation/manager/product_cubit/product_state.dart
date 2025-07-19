part of 'product_cubit.dart';


sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductLoadingState extends ProductState {}

final class ProductSuccessState extends ProductState {
  final List<ProductModel> products;
  ProductSuccessState(this.products);
}

final class ProductFailedState extends ProductState {
  final String error;
  ProductFailedState(this.error);
}
