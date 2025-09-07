import 'package:fasila/core/constants/images.dart';
import 'package:fasila/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:fasila/features/auth/presentation/view/widgets/divider_with_text_widget.dart';
import 'package:fasila/features/auth/presentation/view/widgets/logo_container_widget.dart';
import 'package:fasila/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContinueTextAndSocialLogoSectionWdiget extends StatelessWidget {
  const ContinueTextAndSocialLogoSectionWdiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DividerWithTextWidget(text: S.of(context).orContinueWith),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                final authcubit = BlocProvider.of<AuthCubit>(context);
                await authcubit.signInWithGoogle();
                // print(authcubit.state);
              },
              child: LogoContainerWidget(logo: AppImages.googleLogo),
            ),
            const SizedBox(width: 10),
            LogoContainerWidget(logo: AppImages.facebookLogo),
            const SizedBox(width: 10),
            LogoContainerWidget(logo: AppImages.appleLogo),
          ],
        ),
      ],
    );
  }
}
