import 'package:fasila/core/widgets/custom_titil_and_logos_app_bar.dart';
import 'package:fasila/features/my_orders/presentation/view/widgets/my_orders_view_body.dart';
import 'package:flutter/material.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customTitleAndLogoosAppBar(title: 'My Orders', context: context),
      body: MyOrdersViewBody(),
    );
  }
}
