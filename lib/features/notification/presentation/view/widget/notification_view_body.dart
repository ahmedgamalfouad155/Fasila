import 'package:fasila/features/notification/presentation/view/widget/notification_item_widget.dart';
import 'package:flutter/material.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.separated(
        itemBuilder: (context, index) => NotificationItemWidget(),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: 5,
      ),
    );
  }
}
