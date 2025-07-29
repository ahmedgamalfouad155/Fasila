import 'package:fasila/core/services/firebase_path.dart';
import 'package:fasila/core/services/firestore_services.dart';
import 'package:fasila/features/auth/data/models/user_model.dart';
import 'package:fasila/features/auth/data/services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServicesImpl implements AuthServices {
  final firebaseAuth = FirebaseAuth.instance;
  final firestor = FirestoreServices.instance;

  @override
  User? get currentUser => firebaseAuth.currentUser;

  @override
  Future<User?> loginWithEmailAndPassword(String email, String password) async {
    try {
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          throw Exception('لا يوجد مستخدم بهذا البريد الإلكتروني');
        case 'wrong-password':
          throw Exception('كلمة المرور غير صحيحة');
        case 'invalid-email':
          throw Exception('البريد الإلكتروني غير صالح');
        case 'invalid-credential':
          throw Exception('كلمة المرور أو البريد الإلكتروني غير صحيح');
        default:
          throw Exception('حدث خطأ أثناء تسجيل الدخول: ${e.message}');
      }
    }
  }

  @override
  Future<User?> signUpWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        throw Exception('هذا البريد الإلكتروني مستخدم بالفعل');
      } else if (e.code == 'weak-password') {
        throw Exception('كلمة المرور ضعيفة جدًا');
      } else if (e.code == 'invalid-email') {
        throw Exception('البريد الإلكتروني غير صالح');
      } else {
        throw Exception('فشل التسجيل: ${e.message}');
      }
    }
  }

  @override
  Future<void> logOut() async => await firebaseAuth.signOut();

  @override
  Future<void> setUserData(UserModel userData) async => await firestor.setData(
    path: FirestorePath.user(userData.uid),
    data: userData.toMap(),
  );

@override
Future<User?> signInWithGoogle() async {
  try {
    final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);

    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser == null) return null;

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final userCredential = await firebaseAuth.signInWithCredential(credential);

    if (userCredential.additionalUserInfo?.isNewUser ?? false) {
      final user = userCredential.user!;
      final userData = UserModel(
        uid: user.uid,
        name: user.displayName ?? '',
        email: user.email ?? '',
      );
      await setUserData(userData);
    }

    return userCredential.user;
  } catch (e) {
    throw Exception("فشل تسجيل الدخول بجوجل: ${e.toString()}");
  }
}

}
