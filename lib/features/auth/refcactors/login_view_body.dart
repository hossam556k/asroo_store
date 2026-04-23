import 'package:asroo_store/core/app/route_names.dart';
import 'package:asroo_store/core/common/animation/animation_do.dart';
import 'package:asroo_store/core/common/services/lang_key.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/constant_extensions.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/features/auth/widget/auth_title_info.dart';
import 'package:asroo_store/features/auth/widget/dark_and_lang_buttons.dart';
import 'package:asroo_store/features/auth/widget/login/login_button.dart';
import 'package:asroo_store/features/auth/widget/login/login_text_from.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w,vertical: 20.h),
      child:  SingleChildScrollView(
        child: Column(
          children: [
            //Dark mode and language
            const DarkAndLangButtons(),


            SizedBox(height: 50.h,),



            // title and descriotion
            AuthTitleInfo(title: context.tr(LangKeys.login),
             descriotion: context.tr(LangKeys.welcome)),
                         SizedBox(height: 50.h,),


             //login form
             LoginTextFrom(),
             SizedBox(height: 50.h,),


             //button 
             const LoginButton(),
             SizedBox(height: 30.h,),

             CustomFadeInDown(
              duration: 400,
               child: InkWell(
                  onTap: () {
                    context.pushNamed(RouteNames.signup);
                  },
                 child: TextApp(text: context.tr(LangKeys.createAccount), 
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