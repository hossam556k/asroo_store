import 'package:asroo_store/core/app/env.variable.dart';
import 'package:asroo_store/core/app/generate_router.dart';
import 'package:asroo_store/core/app/netwoek_check.dart';
import 'package:asroo_store/core/app/route_names.dart';
import 'package:asroo_store/core/bloc/bloc_cubit.dart';
import 'package:asroo_store/core/bloc/bloc_state.dart';
import 'package:asroo_store/core/get_it/injection.dart';
import 'package:asroo_store/core/style/themes/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ✅ ScreenUtilInit برّه عشان ميتعملش rebuild مع كل تغيير
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return BlocBuilder<AppCubit, AppState>(
          bloc: getIt<AppCubit>(),
          builder: (context, appState) {
            return StreamBuilder<bool>(
              stream: ConnectionCheck.instance.stream,
              initialData: true,
              builder: (context, snapshot) {
                final isOnline = snapshot.data ?? true;

                return MaterialApp(
                  // ✅ اللغة من AppState
                  locale: appState.locale,
                  supportedLocales: context.supportedLocales,
                  localizationsDelegates: context.localizationDelegates,

                  title: 'asroo_store',
                  debugShowCheckedModeBanner: EnvVariable.instance.debugMode,

                  // ✅ الثيم بيتغير مع الكيوبت
                  theme: themeLight(),
                  darkTheme: themeDark(),
                  themeMode: appState.isDark
                      ? ThemeMode.dark
                      : ThemeMode.light,

                  // ✅ الراوت بيتغير مع الـ connection
                  initialRoute: isOnline
                      ? RouteNames.home
                      : RouteNames.noNetwork,
                  onGenerateRoute: AppRoute.generateRoute,
                );
              },
            );
          },
        );
      },
    );
  }
}