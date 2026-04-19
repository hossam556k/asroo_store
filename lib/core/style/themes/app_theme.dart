import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/core/style/colors/colors_light.dart';
import 'package:asroo_store/core/style/fonts/fonts_family_helper.dart';
import 'package:asroo_store/core/style/themes/colors_extension.dart';
import 'package:asroo_store/core/style/themes/images_extension.dart';
import 'package:flutter/material.dart';

ThemeData themeDark(){
  return ThemeData(
              scaffoldBackgroundColor: ColorsDark.mainColor,
              extensions: <ThemeExtension<dynamic>>[MyColors.dark, MyAssets.dark],
              useMaterial3: true,
              textTheme: TextTheme(
                displaySmall: TextStyle(
                  fontSize: 14,
                  color: ColorsDark.white,
                  fontFamily: FontsFamilyHelper.getFontByLocale(),

                )
              )
            );
}


ThemeData themeLight(){
  return ThemeData(
              scaffoldBackgroundColor: ColorsLight.mainColor,
              extensions: <ThemeExtension<dynamic>>[MyColors.light, MyAssets.light],

              useMaterial3: true,
               textTheme: TextTheme(
                displaySmall: TextStyle(
                  fontSize: 14,
                  color: ColorsLight.black,
                  fontFamily: FontsFamilyHelper.getFontByLocale(),

                )
              )
            );
}