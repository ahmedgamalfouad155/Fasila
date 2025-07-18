import 'package:fasila/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:fasila/features/auth/presentation/view/auth_landing_view.dart';
import 'package:fasila/features/auth/presentation/view/lognin_view.dart';
import 'package:fasila/features/auth/presentation/view/signup_view.dart';
import 'package:fasila/features/camera/presentation/view/camera_view.dart';
import 'package:fasila/features/camera/presentation/view/scane_result_view.dart';
import 'package:fasila/features/cart/presentation/view/cart_view.dart';
import 'package:fasila/features/category_details/data/models/planet_model.dart';
import 'package:fasila/features/category_details/presentation/view/category_datails_view.dart';
import 'package:fasila/features/category_details/presentation/view/category_view.dart';
import 'package:fasila/features/contact_us/presentation/view/contact_us_view.dart';
import 'package:fasila/features/fasila_pro/presentation/view/fasila_pro_view.dart';
import 'package:fasila/features/favorites/presentation/view/favorites_view.dart';
import 'package:fasila/features/home/presentation/view/home_view.dart';
import 'package:fasila/features/location/presentation/view/location_view.dart';
import 'package:fasila/features/location/presentation/view/select_location_view.dart';
import 'package:fasila/features/my_orders/presentation/view/my_order_details_view.dart';
import 'package:fasila/features/my_orders/presentation/view/my_orders_view.dart';
import 'package:fasila/features/my_planet/presentation/view/my_planet.dart';
import 'package:fasila/features/nav_bar/presentation/view/nav_bar_view.dart';
import 'package:fasila/features/notification/presentation/view/notification_view.dart';
import 'package:fasila/features/onbording/onboarding_view.dart';
import 'package:fasila/features/planet_details/presentation/view/planet_details_view.dart';
import 'package:fasila/features/product_details/presentation/view/product_details_view.dart';
import 'package:fasila/features/profile/presentation/view/profile_view.dart';
import 'package:fasila/features/shop/presentation/view/shop_view.dart';
import 'package:fasila/features/splash/splash._view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static String kSplashView = '/splashView';
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
  static String kProductDetailsView = '/productDetailsView';
  static String kCartView = '/cartView';
  static String kNotificationView = '/notificationView';
  static String kCategoryView = '/categoryView';
  static String kCategoryDetailsView = '/categoryDetailsView';
  static String kMyOrderDetailsView = '/myOrderDetailsView';

  static String kHomeView = '/homeView';
  static String kShopView = '/shopView';
  static String kCameraView = '/cameraView';
  static String kMyPlanetView = '/myPlanetView';
  static String kProfileView = '/profileView';

  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',

    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return BlocBuilder<AuthCubit, AuthState>(
            bloc: BlocProvider.of<AuthCubit>(context),
            builder: (context, state) {
              if (state is LoginSuccessState) {
                return NavBarView(child: HomeView());
              } else {
                return SplashView();
              }
            },
          );
        },
      ),

      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return NavBarView(child: child);
        },
        routes: [
          GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
          GoRoute(path: kShopView, builder: (context, state) => ShopView()),
          GoRoute(path: kCameraView, builder: (context, state) => CameraView()),
          GoRoute(
            path: kMyPlanetView,
            builder: (context, state) => MyPlanetView(),
          ),
          GoRoute(
            path: kProfileView,
            builder: (context, state) => ProfileView(),
          ),
          GoRoute(
            path: kCategoryView,
            builder: (context, state) => CategoryView(),
          ),
          GoRoute(
            path: kCategoryDetailsView,
            
            builder: (context, state) {
               state.extra as PlanetModel;
              return CategoryDatailsView();
            },
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
            path: kProductDetailsView,
            builder: (context, state) => ProductDetailsView(),
          ),
          GoRoute(
            path: kFavoritesView,
            builder: (context, state) => FavoritesView(),
          ),
          GoRoute(
            path: kMyOrdersView,
            builder: (context, state) => MyOrdersView(),
          ),
          GoRoute(
            path: kMyOrderDetailsView,
            builder: (context, state) => MyOrderDetailsView(),
          ),
        ],
      ),
      GoRoute(path: kSplashView, builder: (context, state) => SplashView()),
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
      // GoRoute(path: kNavBarView, builder: (context, state) => NavBarView()),
      GoRoute(
        path: kScaneResultView,
        builder: (context, state) => ScaneResultView(),
      ),

      GoRoute(
        path: kFasilaProView,
        builder: (context, state) => FasilaProView(),
      ),
      GoRoute(path: kLocationView, builder: (context, state) => LocationView()),

      GoRoute(
        path: kSelectLocationView,
        builder: (context, state) => SelectLocationView(),
      ),

      GoRoute(path: kCartView, builder: (context, state) => CartView()),
      GoRoute(
        path: kNotificationView,
        builder: (context, state) => NotificationView(),
      ),
    ],
  );
}
