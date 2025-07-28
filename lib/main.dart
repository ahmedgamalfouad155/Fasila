import 'package:fasila/core/constants/global_data.dart';
import 'package:fasila/core/helper/notification_initializer.dart';
import 'package:fasila/core/router/app_router.dart';
import 'package:fasila/core/theme/thems.dart';
import 'package:fasila/features/auth/data/services/auth_services_impl.dart';
import 'package:fasila/features/auth/presentation/manager/auth_cubit/auth_cubit.dart';
import 'package:fasila/features/profile/presentation/manager/language_cubit/language_cubit.dart';
import 'package:fasila/features/profile/presentation/manager/them_cubit/them_cubit.dart';
import 'package:fasila/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:fasila/generated/l10n.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  await Hive.openBox(hiveName);

  await initializeNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(AuthServicesImpl())..authState(),
        ),
        BlocProvider(create: (context) => LanguageCubit())  ,
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            child: MaterialApp.router(
               locale: context.watch<LanguageCubit>().state,
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: state,
              title: 'FASILA',
              routerConfig: AppRouter.router,
            ),
          );
        },
      ),
    );
  }
}
