import 'package:fasila/core/services/firebase_path.dart';
import 'package:fasila/core/services/firestore_services.dart';
import 'package:fasila/features/auth/data/models/user_model.dart';
import 'package:fasila/features/auth/data/services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServicesImpl implements AuthServices {
  final firebaseAuth = FirebaseAuth.instance;
  final firestor = FirestoreServices.instance;

  @override
  User? get currentUser => firebaseAuth.currentUser;

  @override
  Future<User?> loginWithEmailAndPassword(String email, String password) async {
    final userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  }

  @override
  Future<User?> signUpWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  }

  @override
  Future<void> logOut() async => await firebaseAuth.signOut();

  @override
  Future<void> setUserData(UserModel userData) async => await firestor.setData(
    path: FirestorePath.user(userData.uid),
    data: userData.toMap(),
  );
}
