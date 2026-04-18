 import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/core/style/colors/colors_light.dart';
import 'package:flutter/material.dart';

class MyColors extends ThemeExtension<MyColors>{
  MyColors({required this.primaryColor});

final Color ? primaryColor;
  @override
  ThemeExtension<MyColors> copyWith({
     Color ? primaryColor,

  }) {
   
   return MyColors(primaryColor: primaryColor,); 
  }

  @override
  ThemeExtension<MyColors> lerp(covariant ThemeExtension<MyColors>? other, double t) {
   if(other is! MyColors){
   return this;}



      return MyColors(primaryColor: primaryColor,); 
      

  }

  static  MyColors dark = MyColors(
    primaryColor: ColorsDark.primaryDarkColor,
  );


  static  MyColors light = MyColors(
    primaryColor: ColorsLight.primaryLightColor,
  );
}