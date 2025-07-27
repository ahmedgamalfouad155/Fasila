import 'package:fasila/core/logic/search_cubit.dart';
import 'package:fasila/core/widgets/custom_serch_widget.dart';
import 'package:fasila/features/shop/presentation/view/widgets/shop_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: CustomSearchWidget()),
          body: ShopViewBody(),
        ),
      ),
    );
  }
}
