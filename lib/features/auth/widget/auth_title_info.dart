import 'package:asroo_store/core/common/animation/animation_do.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/constant_extensions.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTitleInfo extends StatelessWidget {

  const AuthTitleInfo({required this.title, required this.descriotion, super.key});
  final String title;
  final String descriotion;

  @override
  Widget build(BuildContext context) {

    return CustomFadeInDown(
      duration: 400,
      child: Column(
      
        children:[ TextApp(text: title, theme: context.textStyle.copyWith(
          fontSize: 24.sp,
          color: context.colors.textColor,
          fontWeight: FontWeightHelper.bold
        ),),
        SizedBox(height: 10.h,),
        TextApp(text: descriotion, theme: context.textStyle.copyWith(
          fontSize: 16.sp,
          color: context.colors.textColor,),
          textAlign: TextAlign.center,)
        ]
      ),
    );
  }
}
