import 'package:fasila/core/widgets/custom_serch_widget.dart';
import 'package:fasila/features/home/presentation/view/widgets/carousel_slider_widget.dart';
import 'package:fasila/features/home/presentation/view/widgets/get_advice_widget.dart';
import 'package:fasila/features/home/presentation/view/widgets/lastes_product_widget.dart';
import 'package:fasila/features/home/presentation/view/widgets/list_of_explore_home_widget.dart';
import 'package:fasila/features/home/presentation/view/widgets/tack_apicitre_card_widget.dart';
import 'package:fasila/features/home/presentation/view/widgets/track_crop_widget.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomSearchWidget(),
            const SizedBox(height: 8),
            CarouselSliderWidget(),
            const SizedBox(height: 8),
            ListOfExploreHomeWidget(),
            const SizedBox(height: 8),
            TrackCropCardWiget(),
            const SizedBox(height: 8),
            TakePicitreCardWidget(),
            const SizedBox(height: 8),
            GetAdviceWidget(),
            const SizedBox(height: 8),
            LastesProductWidget(),
          ],
        ),
      ),
    );
  }
}
