import 'package:fasila/features/auth/data/models/user_model.dart';

abstract class UserInfoService {
  Future<UserModel> getUserInfo();
}
