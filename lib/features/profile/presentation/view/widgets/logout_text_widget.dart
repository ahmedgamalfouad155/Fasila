
import 'package:fasila/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogoutTextWidget extends StatelessWidget {
  const LogoutTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        (context).go(AppRouter.kAuthLandingView);
      },
      child: Row(
        children: [
          const SizedBox(width: 10),
          Icon(Icons.logout, color: Colors.red),
          const SizedBox(width: 10),
          Text(
            'Logout',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
