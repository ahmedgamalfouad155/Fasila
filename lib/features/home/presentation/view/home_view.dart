import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/widgets/notification_and_cart_icon_widget.dart';
import 'package:fasila/features/home/presentation/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(Appimages.logoImage),
        actions: [
          NotificationAndCartIconsWidget(),
        ],
      ),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
