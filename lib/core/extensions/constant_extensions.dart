import 'dart:ui';

import 'package:asroo_store/core/style/themes/colors_extension.dart';
import 'package:asroo_store/core/style/themes/images_extension.dart';
import 'package:flutter/material.dart';

extension ConstantExtensions on BuildContext {

  MyAssets get images => Theme.of(this).extension<MyAssets>()!;
  MyColors get colors => Theme.of(this).extension<MyColors>()!;

  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;

  // ✅ حذفنا tr عشان EasyLocalization بتوفرها على String مباشرة

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