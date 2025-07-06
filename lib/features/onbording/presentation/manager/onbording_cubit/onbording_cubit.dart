import 'package:fasila/core/constants/images.dart';
import 'package:fasila/features/onbording/data/onboarding_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<int> {
  OnboardingCubit() : super(0);

  void changePage(int index) => emit(index);

  final List<OnboardingPageModel> pages = [
    OnboardingPageModel(
      title: "Explore your favorite plant",
      description:
          "Find your favorite plant with ease and get its care guide!.",
      images: AppImages.onBoardingImage1,
    ),
    OnboardingPageModel(
      title: "Intelligent diagnosis",
      description: "Discover plant diseases at the touch of a button !.",
      images: AppImages.onBoardingImage2,
    ),
    OnboardingPageModel(
      title: "Healthy growth",
      description: "Follow your plants' progress step by step",
      images: AppImages.onBoardingImage3,
    ),
    OnboardingPageModel(
      title: "Complete store!",
      description: "Everything you need for your home garden",
      images: AppImages.onBoardingImage4,
    ),
  ];
}
