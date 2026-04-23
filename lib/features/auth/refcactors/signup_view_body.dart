import 'package:asroo_store/core/app/route_names.dart';
import 'package:asroo_store/core/common/animation/animation_do.dart';
import 'package:asroo_store/core/common/services/lang_key.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/constant_extensions.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/features/auth/widget/auth_title_info.dart' show AuthTitleInfo;
import 'package:asroo_store/features/auth/widget/dark_and_lang_buttons.dart';
import 'package:asroo_store/features/auth/widget/sinup/signup_button.dart';
import 'package:asroo_store/features/auth/widget/sinup/signup_text_from.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
      child:  SingleChildScrollView(
        child: Column(
          children: [
            //Dark mode and language
            DarkAndLangButtons(),
             SizedBox(height: 20.h,),



            // title and descriotion
            AuthTitleInfo(title: context.tr(LangKeys.signUp),
             descriotion: context.tr(LangKeys.signUpWelcome)),
                         SizedBox(height: 20.h,),
             CircleAvatar(
              radius: 40.r,
            backgroundColor: context.colors.bluePinkLight,
            child: Icon(Icons.person,color: context.colors.bluePinkDark,),
             ),
                                 SizedBox(height: 20.h,),

          //signup form 
          SignupTextFrom(),
                       SizedBox(height: 20.h,),

          SignupButton(),
                                 SizedBox(height: 20.h,),

          CustomFadeInDown(
              duration: 400,
               child: InkWell(
                  onTap: () {
                    context.pushNamed(RouteNames.login);
                  },
                 child: TextApp(text: context.tr(LangKeys.youHaveAccount), 
                 theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.bold,
                  color: context.colors.bluePinkLight,
                 )),
               ),
             )



          ],
        ),
      ),
    );
  }
}