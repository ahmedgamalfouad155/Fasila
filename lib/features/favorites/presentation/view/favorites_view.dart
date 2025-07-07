import 'package:fasila/features/favorites/presentation/view/widgets/favorites_view_body.dart';
import 'package:flutter/material.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FavoritesViewBody(),
    );
  }
}