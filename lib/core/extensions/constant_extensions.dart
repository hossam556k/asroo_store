import 'package:flutter/material.dart';

extension ConstantExtensions on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments})
  {

    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }
    Future<dynamic> pushReplacement(String routeName, {Object? arguments})
  {

    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName, {Object? arguments})
  {

    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, (route)=> false);
  }
 void pop() => Navigator.of(this).pop();

}