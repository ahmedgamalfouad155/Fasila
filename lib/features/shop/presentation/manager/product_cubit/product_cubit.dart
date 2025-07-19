import 'package:fasila/features/shop/data/models/product_model.dart';
import 'package:fasila/features/shop/data/services/product_services.dart';
import 'package:fasila/features/shop/data/services/product_services_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  final ProductServices productServices = ProductServicesImpl();

  void getAllProducts() async {
    emit(ProductLoadingState());
    try {
      final products = await productServices.getAllProducts();
      emit(ProductSuccessState(products));
    } catch (e) {
      emit(ProductFailedState(e.toString()));
    }
  }

  void getProductsDependedOnCategoryName({required String categoryName}) async {
    emit(ProductLoadingState());
    try {
      final products = await productServices.getProductsDependedOnCategoryName(
        categoryName,
      );
      emit(ProductSuccessState(products));
    } catch (e) {
      emit(ProductFailedState(e.toString()));
    }
  }
}
