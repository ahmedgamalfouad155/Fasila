import 'package:carousel_slider/carousel_slider.dart';
import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:fasila/core/theme/colors.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  int _currentIndex = 0;

  final List<Map<String, dynamic>> sliderItems = [
    {
      "title": "Garden Tools",
      "subtitle": "Make gardening easy and fun with our durable tools!",
      "image": AppImages.carouselSliderImage,
    },
    {
      "title": "Fruits & Veggies",
      "subtitle": "Discover fresh produce for your garden today!",
      "image": AppImages.carouselSliderImage,
    },
    {
      "title": "Plant Care",
      "subtitle": "Get the best tools and tips to care for your plants.",
      "image": AppImages.carouselSliderImage,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: sliderItems.length,
          itemBuilder: (context, index, realIndex) {
            final item = sliderItems[index];
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    const Color.fromARGB(255, 0, 116, 102),
                    const Color.fromARGB(255, 153, 201, 196),
                    const Color.fromARGB(255, 217, 234, 232),
                  ],
                ),

                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item["title"],
                          style: AppStyles.textStyle18(
                            context,
                          ).copyWith(color: context.appColors.white),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          item["subtitle"],
                          style: AppStyles.textStyle12White(context),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Image.asset(item["image"], height: 80, fit: BoxFit.contain),
                ],
              ),
            );
          },
          options: CarouselOptions(
            height: 140,
            autoPlay: false,
            enlargeCenterPage: false,
            viewportFraction: 0.9,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(sliderItems.length, (index) {
            final isActive = index == _currentIndex;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: isActive ? 12 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: isActive
                    ? context.appColors.teal
                    : context.appColors.grey,
                borderRadius: BorderRadius.circular(4),
              ),
            );
          }),
        ),
      ],
    );
  }
}
