import 'package:fasila/features/cart/presentation/manager/product_counter_cubit/product_counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCounterCubit extends Cubit<ProductCounterState> {
  ProductCounterCubit() : super(ProductConterInitial());

  double quantity = 1;
  void changeQuantity(double value) {
    emit(ProductConterInitial());
    quantity = value;
    emit(ChangeQuantitySuccessState());
  }
}
