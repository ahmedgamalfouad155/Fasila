import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/thems.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
         theme: lightTheme,
        darkTheme: darkTheme, 
        title: 'FASILA',
        routerConfig: AppRouter.router,
      ),
    );
  }
}
