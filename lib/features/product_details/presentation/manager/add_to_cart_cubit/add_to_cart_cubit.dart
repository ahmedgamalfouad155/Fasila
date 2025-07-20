import 'package:fasila/features/product_details/data/models/save_product_model.dart';
import 'package:fasila/features/product_details/data/services/cart_services/add_product_to_cart_services.dart';
import 'package:fasila/features/product_details/data/services/cart_services/add_product_to_cart_services_impl.dart';
import 'package:fasila/features/product_details/presentation/manager/add_to_cart_cubit/add_to_cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddToCartCubit extends Cubit<AddToCartState> {
  AddToCartCubit() : super(AddToCartInitial());

  final AddProductToCartServices cartProductServices =
      AddProductToCartServicesImpl();

  Future<void> addProducttoCart(SaveProductModel product) async {
    emit(AddToCartLoadingState());
    try {
      await cartProductServices.addProductToCart(product);
      emit(AddToCartSuccessState());
    } catch (e) {
      emit(AddToCartFailedState(e.toString()));
    }
  }
}
