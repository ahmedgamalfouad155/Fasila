import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingNavigationButtonWidget extends StatelessWidget {
  const OnboardingNavigationButtonWidget({
    super.key,
    required this.currentIndex,
    required this.fadeAnimation,
    required this.pageController,
  });

  final int currentIndex;
  final Animation<double> fadeAnimation;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return currentIndex == 3
        ? FadeTransition(
            opacity: fadeAnimation,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomButon(
                text: 'start now',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kAuthLandingView);
                },
              ),
            ),
          )
        : IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            color: context.appColors.teal,
            onPressed: () {
              pageController.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            },
          );
  }
}
