import 'package:fasila/features/auth/presentation/view/auth_landing_view.dart';
import 'package:fasila/features/auth/presentation/view/lognin_view.dart';
import 'package:fasila/features/auth/presentation/view/signup_view.dart';
import 'package:fasila/features/home/presentation/view/home_view.dart';
import 'package:fasila/features/onbording/onboarding_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String konboardingView = '/onboardingView';
  static String kAuthLandingView = '/authLandingView';
  static String kLogInView = '/logInView';
  static String kSignUpView = '/signUpView';
  static String kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => AuthLandingView()),
      GoRoute(
        path: konboardingView,
        builder: (context, state) => OnboardingView(),
      ),
      GoRoute(
        path: kAuthLandingView,
        builder: (context, state) => AuthLandingView(),
      ),
      GoRoute(path: kLogInView, builder: (context, state) => LogniView()),
      GoRoute(path: kSignUpView, builder: (context, state) => SignupView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
    ],
  );
}
