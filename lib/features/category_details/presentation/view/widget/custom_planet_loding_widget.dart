import 'package:fasila/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimerPlanetLoadingWidget extends StatelessWidget {
  const CustomShimerPlanetLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.9,
      child: ListView.separated(
        scrollDirection: Axis.vertical,
        separatorBuilder: (context, index) => const SizedBox(width: 5),
        itemCount: 3,
        itemBuilder: (context, index) => Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 48, 97, 35),
          highlightColor: const Color.fromARGB(255, 128, 155, 112),
          direction: ShimmerDirection.ltr,
          period: const Duration(milliseconds: 1500),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 11),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: context.appColors.offWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 10,
                          color: const Color(0xFFFFE0C0),
                        ),
                        const SizedBox(width: 100),
                        Icon(Icons.favorite, color: context.appColors.teal),
                        Icon(Icons.share, color: context.appColors.teal),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: 180,
                      height: 6,
                      color: const Color(0xFFFFE0C0),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 130,
                      height: 6,
                      color: const Color(0xFFFFE0C0),
                    ),
                    const SizedBox(height: 15),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
