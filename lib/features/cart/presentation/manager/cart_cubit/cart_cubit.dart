import 'dart:async';
import 'package:fasila/features/cart/data/services/cart_services.dart';
import 'package:fasila/features/cart/data/services/cart_services_impl.dart';
import 'package:fasila/features/cart/presentation/manager/cart_cubit/cart_state.dart';
import 'package:fasila/features/product_details/data/models/save_product_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartCubit extends Cubit<CartState> {

  CartCubit() : super(CartInitial()) {
    getAllProductInMyCart();
  }

  final CartServices cartService = CartServicesImpl();
  StreamSubscription? _cartSubscription;

  void getAllProductInMyCart() {
    emit(CartLoadingState());

    _cartSubscription = cartService.getMyProductsCart().listen(
      (cartItems) {
        emit(CartSuccsessState(cartItems));
      },
      onError: (e) {
        emit(CartFailedState(e.toString()));
      },
    );
  }

  @override
  Future<void> close() {
    _cartSubscription?.cancel();
    return super.close();
  }

  Future<void> deleteCart(SaveProductModel product) async {
    emit(DeleteCartLoadingState());
    try {
     await cartService.deleteProductFromCart(product);
      emit(DeleteCartSuccessState());
    } catch (e) {
      emit(DeleteCartFailedState(e.toString()));
    }
  }
}
