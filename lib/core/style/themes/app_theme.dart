import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/core/style/colors/colors_light.dart';
import 'package:asroo_store/core/style/themes/colors_extension.dart';
import 'package:flutter/material.dart';

ThemeData themeDark(){
  return ThemeData(
              scaffoldBackgroundColor: ColorsDark.primaryDarkColor,
              extensions: <ThemeExtension<dynamic>>[MyColors.dark],
              useMaterial3: true,
            );
}


ThemeData themeLight(){
  return ThemeData(
              scaffoldBackgroundColor: ColorsLight.primaryLightColor,
              extensions: <ThemeExtension<dynamic>>[MyColors.light],

              useMaterial3: true,
            );
}