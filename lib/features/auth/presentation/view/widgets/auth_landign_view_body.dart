import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/widgets/custom_buton.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AuthLandignBody extends StatelessWidget {
  const AuthLandignBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        bottom: 50,
        top: 30,
        left: 25,
        right: 25,
      ),
      child: Column(
        children: [
          Expanded(child: SvgPicture.asset(AppImages.authImge)),
          CustomButon(
            text: S.of(context).signin,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kLogInView);
            },
          ),
          const SizedBox(height: 16),
          CustomButon(
            text: S.of(context).signup,
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSignUpView);
            },
            bacgrouncColor: context.appColors.white,
            textColor: context.appColors.teal,
          ),
        ],
      ),
    );
  }
}
