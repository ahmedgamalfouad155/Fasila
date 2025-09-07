import 'package:fasila/features/auth/data/models/user_model.dart';
import 'package:fasila/features/auth/data/services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authServices) : super(AuthInitial());

  final AuthServices authServices;
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<void> login(String email, String password) async {
    emit(LoginLoadingState());
    try {
      final user = await authServices.loginWithEmailAndPassword(
        email,
        password,
      );
      if (user != null) {
        emit(LoginSuccessState());
      } else {
        emit(LoginFailedState('Login failed'));
      }
    } catch (e) {
      emit(LoginFailedState(e.toString()));
    }
  }

  Future<void> signUp(String email, String password, String name) async {
    emit(SignupLoadingState());
    try {
      final user = await authServices.signUpWithEmailAndPassword(
        email,
        password,
      );
      if (user != null) {
        emit(SignupSuccessState());
        final userData = UserModel(name: name, uid: user.uid, email: email);
        await authServices.setUserData(userData);
      } else {
        emit(SignupFailedState('Signup failed'));
      }
    } catch (e) {
      emit(SignupFailedState(e.toString()));
    }
  }

  void authState() {
    final user = authServices.currentUser;
    if (user != null) {
      emit(LoginSuccessState());
    } else {
      emit(AuthInitial());
    }
  }

  Future<void> logout() async {
    emit(LogoutLoadingState());
    try {
      await authServices.logOut();
      emit(AuthInitial());
    } catch (e) {
      emit(LogoutFailedState(e.toString()));
    }
  }

  Future<void> signInWithGoogle() async {
    emit(GoogleSignInLoading());

    try {
      final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        emit(GoogleSignInFailure("تم إلغاء تسجيل الدخول من المستخدم."));
        return;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await firebaseAuth.signInWithCredential(
        credential,
      );
      emit(GoogleSignInSuccess(userCredential.user!));
    } catch (e) {
      emit(GoogleSignInFailure("فشل تسجيل الدخول بجوجل: ${e.toString()}"));
      // print(e.toString());
    }
  }
}
