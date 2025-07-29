import 'package:fasila/core/constants/images.dart';
import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/customs_box_decoratino.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/profile/presentation/manager/image_profile_cubit/image_profile_cubit.dart';
import 'package:fasila/features/profile/presentation/manager/user_info_cubit/user_info_cubit.dart';
import 'package:fasila/features/profile/presentation/manager/user_info_cubit/user_info_state.dart';
import 'package:fasila/features/profile/presentation/view/widgets/profile_image_widget.dart';
import 'package:fasila/features/profile/presentation/view/widgets/user_name_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileImageAndUserNameWidget extends StatelessWidget {
  const ProfileImageAndUserNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: context.appColors.offWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocProvider(
                create: (context) => ImageProfileCubit(),
                child: ProfileImageWidget(),
              ),
              const SizedBox(height: 10),
              BlocProvider(
                create: (context) => UserInfoCubit()..getUserInfo(),
                child: UserNameTextWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
