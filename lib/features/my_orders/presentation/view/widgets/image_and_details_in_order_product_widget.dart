import 'package:cached_network_image/cached_network_image.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/nav_bar/presentation/manager/nav_bar_cubit/navbar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ImageAndDetailsInOrderedProductWidget extends StatelessWidget {
  const ImageAndDetailsInOrderedProductWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
  });

  final String image, title, subTitle, price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<NavBarCubit>().changeIndex(1);
        GoRouter.of(context).push(AppRouter.kProductDetailsView);
      },
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: context.appColors.grey,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(imageUrl: image, width: 90),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppStyles.textStyle14(
                    context,
                  ).copyWith(color: context.appColors.teal),
                ),
                const SizedBox(height: 5),
                Text(subTitle, style: AppStyles.textStyle14(context)),
                const SizedBox(height: 5),
                Text(
                  price,
                  style: AppStyles.textStyle14(
                    context,
                  ).copyWith(color: context.appColors.teal),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
