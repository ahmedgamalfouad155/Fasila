import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/profile/presentation/manager/user_info_cubit/user_info_cubit.dart';
import 'package:fasila/features/profile/presentation/manager/user_info_cubit/user_info_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserNameTextWidget extends StatelessWidget {
  const UserNameTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<UserInfoCubit, UserInfoState>(
          bloc: context.read<UserInfoCubit>(),

          builder: (context, state) {
            if (state is UserInfoLoadingState) {
              return Text(
                "Ahmed Gamal",
                style: AppStyles.textStyle16Teal(
                  context,
                ).copyWith(fontWeight: FontWeight.bold),
              );
            } else if (state is UserInfoSuccessState) {
              return Text(
                state.userModel.name,
                style: AppStyles.textStyle16Teal(
                  context,
                ).copyWith(fontWeight: FontWeight.bold),
              );
            } else if (state is UserInfoFailedState) {
              return Text(state.error);
            } else {
              return Text("error");
            }
          },
        ),
        const SizedBox(width: 10),
        Icon(Icons.edit_outlined, color: context.appColors.teal, size: 20),
      ],
    );
  }
}
