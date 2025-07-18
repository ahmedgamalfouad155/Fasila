import 'package:fasila/features/auth/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthServices {
  
  User? get currentUser;
  Future<User?> loginWithEmailAndPassword(String email, String password);
  Future<User?> signUpWithEmailAndPassword(String email, String password); 
  Future<void> logOut(); 
  Future<void> setUserData(UserModel userData);
}


