import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/features/profile/presentation/view/widgets/profile_option_widget.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class MyOrdersAndFasilaProAndContactUsSection extends StatelessWidget {
  const MyOrdersAndFasilaProAndContactUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileOptionWidget(
          logo: SvgPicture.asset(AppImages.myOrdersLogo),
          title:  S.of(context).myOrders,
          onTap: () {
            GoRouter.of(context).push(AppRouter.kMyOrdersView);
          },
        ),
        const SizedBox(height: 10),

        ProfileOptionWidget(
          logo: SvgPicture.asset(AppImages.faselaProLogo), 
          title:  S.of(context).fasilaPro,
          onTap: () {
            GoRouter.of(context).push(AppRouter.kFasilaProView);
          },
        ),
        const SizedBox(height: 10),

        ProfileOptionWidget(
          logo: Icon(Icons.phone, color: Color(0xff076B5F)),
          title:  S.of(context).contactUs,
          onTap: () {
            GoRouter.of(context).push(AppRouter.kContactUsView);
          },
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
