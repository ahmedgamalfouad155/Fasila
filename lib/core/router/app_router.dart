import 'package:fasila/features/auth/presentation/view/auth_landing_view.dart';
import 'package:fasila/features/auth/presentation/view/lognin_view.dart';
import 'package:fasila/features/auth/presentation/view/signup_view.dart';
import 'package:fasila/features/camera/presentation/view/scane_result_view.dart';
import 'package:fasila/features/contact_us/presentation/view/contact_us_view.dart';
import 'package:fasila/features/fasila_pro/presentation/view/fasila_pro_view.dart';
import 'package:fasila/features/favorites/presentation/view/favorites_view.dart';
import 'package:fasila/features/location/presentation/view/location_view.dart';
import 'package:fasila/features/location/presentation/view/select_location_view.dart';
import 'package:fasila/features/my_orders/presentation/view/my_orders_view.dart';
import 'package:fasila/features/nav_bar/presentation/view/nav_bar_view.dart';
import 'package:fasila/features/onbording/onboarding_view.dart';
import 'package:fasila/features/planet_details/presentation/view/planet_details_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String konboardingView = '/onboardingView';
  static String kAuthLandingView = '/authLandingView';
  static String kLogInView = '/logInView';
  static String kSignUpView = '/signUpView';
  static String kNavBarView = '/navBarView';
  static String kScaneResultView = '/scaneResultView';
  static String kPlanetDetailsView = '/planetDetailsView';
  static String kContactUsView = '/contactUsViwe';
  static String kFasilaProView = '/fasilaProView';
  static String kLocationView = '/locationView';
  static String kMyOrdersView = '/myOrdersView';
  static String kFavoritesView = '/favoritesView';
  static String kSelectLocationView = '/selectLocationView';


  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => NavBarView()),
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
      GoRoute(path: kNavBarView, builder: (context, state) => NavBarView()),
      GoRoute(
        path: kScaneResultView,
        builder: (context, state) => ScaneResultView(),
      ),
      GoRoute(
        path: kPlanetDetailsView,
        builder: (context, state) => PlanetDetailsView(),
      ),

      GoRoute(
        path: kContactUsView,
        builder: (context, state) => ContactUsView(),
      ),
      GoRoute(
        path: kFasilaProView,
        builder: (context, state) => FasilaProView(),
      ),
      GoRoute(path: kLocationView, builder: (context, state) => LocationView()),
      GoRoute(path: kMyOrdersView, builder: (context, state) => MyOrdersView()),
      GoRoute(path: kFavoritesView, builder: (context, state) => FavoritesView()),
      GoRoute(
        path: kSelectLocationView,
        builder: (context, state) => SelectLocationView(),
      ),
    ],
  );
}
