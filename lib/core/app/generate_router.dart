import 'package:asroo_store/core/app/route_names.dart';
import 'package:asroo_store/features/login/presnation/views/login_view.dart';
import 'package:asroo_store/features/no_network/no_network.dart';
import 'package:asroo_store/features/splash_view/splash_view.dart';
import 'package:flutter/material.dart';

class AppRoute{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case RouteNames.home:
        return MaterialPageRoute(builder: (_) => const SplashView());
        case RouteNames.login:
        return MaterialPageRoute(builder: (_) => const LoginView());
        case RouteNames.noNetwork: 
        return MaterialPageRoute(builder: (_) => const NoNetworkScreen());

        default:
        return MaterialPageRoute(builder: (_) => const SplashView());
    }
  }
}