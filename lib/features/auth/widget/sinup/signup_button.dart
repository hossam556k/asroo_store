import 'package:asroo_store/core/common/animation/animation_do.dart';
import 'package:asroo_store/core/common/services/lang_key.dart';
import 'package:asroo_store/core/common/widgets/custom_linear_button.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/constant_extensions.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {

      return CustomFadeInRight(
      duration: 600,
      child: CustomLinearButton(onPressed: () {  }, 
      height: 50.h,
      width: double.infinity,
      child:TextApp(text: context.tr(LangKeys.signUp), 
      theme: context.textStyle.copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeightHelper.bold,
      )),
      
      ),
    );
  }
  }
