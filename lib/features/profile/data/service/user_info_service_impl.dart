import 'package:fasila/core/services/firebase_path.dart';
import 'package:fasila/core/services/firestore_services.dart';
import 'package:fasila/features/auth/data/models/user_model.dart';
import 'package:fasila/features/auth/data/services/auth_services_impl.dart';
import 'package:fasila/features/profile/data/service/user_info_service.dart';

class UserInfoServiceImpl implements UserInfoService {
  final firestorServices = FirestoreServices.instance;
  final uid = AuthServicesImpl().currentUser!.uid;

  @override
  Future<UserModel> getUserInfo() async {
    return await firestorServices.getDocument(
      path: FirestorePath.user(uid),
      builder: (data, documentId) => UserModel.fromMap(data, documentId),
    );
  }
}
