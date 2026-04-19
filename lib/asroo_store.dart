import 'package:asroo_store/core/app/env.variable.dart';
import 'package:asroo_store/core/app/generate_router.dart';
import 'package:asroo_store/core/app/netwoek_check.dart';
import 'package:asroo_store/core/app/route_names.dart';
import 'package:asroo_store/core/style/themes/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:asroo_store/core/app/netwoek_check.dart';
import 'package:asroo_store/screens/no_network.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: ConnectionCheck.instance.stream,
      initialData: true,
      builder: (context, snapshot) {
        final isOnline = snapshot.data ?? true;


        return ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          child: MaterialApp(
            locale: context.locale,
              supportedLocales: context.supportedLocales,
               localizationsDelegates: context.localizationDelegates,

          
            title: 'asroo_store',
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            theme: themeLight(),
          
          initialRoute: isOnline? RouteNames.home : RouteNames.noNetwork,
          onGenerateRoute: AppRoute.generateRoute, 
              
          ),
  
    );
      
  });
}
}
