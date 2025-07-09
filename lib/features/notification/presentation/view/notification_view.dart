import 'package:fasila/core/theme/colors.dart';
import 'package:fasila/core/theme/styles.dart';
import 'package:fasila/features/notification/presentation/view/widget/notification_view_body.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: context.appColors.teal),
        title: Text(
          'Notification',
          style: AppStyles.textStyle16Teal(
            context,
          ).copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: NotificationViewBody(),
    );
  }
}
