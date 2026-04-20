import 'dart:ui';

import 'package:asroo_store/core/style/themes/colors_extension.dart';
import 'package:asroo_store/core/style/themes/images_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension ConstantExtensions on BuildContext {

  MyAssets get images => Theme.of(this).extension<MyAssets>()!;
  MyColors get colors => Theme.of(this).extension<MyColors>()!;

TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;  
 String tr(String key) => key.tr();


  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacement(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
      arguments: arguments,
    );
  }

  void pop() => Navigator.of(this).pop();
}