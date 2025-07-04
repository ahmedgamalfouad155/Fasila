import 'package:fasila/features/auth/presentation/view/logni_view.dart';
import 'package:fasila/features/auth/presentation/view/onboarding_view.dart';
import 'package:fasila/features/auth/presentation/view/signup_view.dart';
import 'package:fasila/features/splash/splash._view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter { 
  static String konboardingView = '/onboardingView';
  static String kLogInView = '/logInView';
  static String kSignUpView = '/signUpView'; 
  static String kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: konboardingView, builder: (context, state) => OnboardingView()),
      GoRoute(path: kLogInView, builder: (context, state) => LogniView()),
      GoRoute(path: kSignUpView, builder: (context, state) => SignupView()),
      
    ],
  );
}
