import 'package:fasila/features/profile/data/service/user_info_service_impl.dart';
import 'package:fasila/features/profile/presentation/manager/user_info_cubit/user_info_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserInfoCubit extends Cubit<UserInfoState> {
  UserInfoCubit() : super(UserInfoInitial());
  final UserInfoServiceImpl profileService = UserInfoServiceImpl();
  void getUserInfo() async {
    emit(UserInfoLoadingState());
    try {
      final userModel = await profileService.getUserInfo();
      emit(UserInfoSuccessState(userModel));
    } catch (e) {
      emit(UserInfoFailedState(e.toString()));
    }
  }
}
