import 'package:asroo_store/core/app/env.variable.dart';
<<<<<<< HEAD
import 'package:asroo_store/core/app/generate_router.dart';
import 'package:asroo_store/core/app/netwoek_check.dart';
import 'package:asroo_store/core/app/route_names.dart';
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
          
            title: 'asroo_store',
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white
            ),
          
          initialRoute: isOnline? RouteNames.home : RouteNames.noNetwork,
          onGenerateRoute: AppRoute.generateRoute, 
              
          ),
=======
        return MaterialApp(
          title: 'asroo_store',
          debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
          theme: ThemeData(),

          home: isOnline
              ? Scaffold(appBar: AppBar(title: const Text("asroo storee"),),)
              : const NoNetworkScreen(),
>>>>>>> e41835c63c998399c1ff7a4dfd3b7f3473268683
        );
      },
    );
  }
}