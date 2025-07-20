
import 'package:fasila/features/cart/data/services/cart_services.dart';
import 'package:fasila/features/cart/data/services/cart_services_impl.dart';
import 'package:fasila/features/cart/presentation/manager/product_counter_cubit/product_counter_state.dart';
import 'package:fasila/features/product_details/data/models/save_product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCounterCubit extends Cubit<ProductCounterState> {
  ProductCounterCubit() : super(ProductConterInitial());

  final CartServices cartService = CartServicesImpl();

  double quantity = 1;
  void changeQuantity(double value) {
    emit(ProductConterInitial());
    quantity = value;
    emit(ChangeQuantitySuccessState());
  }

  void updateProductInCart(SaveProductModel product) {
    emit(ProductConterInitial());
    cartService.updateProductInCart(product);
    emit(ChangeQuantitySuccessState());
  }
}
