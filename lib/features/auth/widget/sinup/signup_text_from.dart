import 'package:asroo_store/core/common/animation/animation_do.dart';
import 'package:asroo_store/core/common/services/lang_key.dart';
import 'package:asroo_store/core/common/widgets/custom_text_from.dart';
import 'package:asroo_store/core/extensions/constant_extensions.dart';
import 'package:asroo_store/core/utils/app_regex.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupTextFrom extends StatefulWidget {
  const SignupTextFrom({super.key});

  @override
  State<SignupTextFrom> createState() => _SignupTextFromState();
}

class _SignupTextFromState extends State<SignupTextFrom> {
  @override
  Widget build(BuildContext context) {
          bool isObsureText =true;

     return Form(
      child: Column(
        children: [
          CustomFadeInRight(
            duration: 400,
            child: CustomTextField(controller: TextEditingController(),
            hintText: context.tr(LangKeys.email),
            keyboardType: TextInputType.emailAddress,
            suffixIcon: const Icon(Icons.email_outlined,color: Colors.white,),
            validator: (value) {
                if(AppRegex.isEmailValid('')){
                  return context.tr(LangKeys.validEmail);
                }
                return null;
            },
            
                    
            ),
          ),
                    SizedBox(height: 20.h,),

               CustomFadeInRight(
            duration: 400,
            child: CustomTextField(controller: TextEditingController(),
            hintText: context.tr(LangKeys.fullName),
            keyboardType: TextInputType.text,
            suffixIcon: const Icon(Icons.person_2_outlined,color: Colors.white,),
            validator: (value) {
                if(value == null || value.isEmpty){

                  return context.tr(LangKeys.validName);
                }
                return null;
                
            },
                    
            ),
          ),
          SizedBox(height: 20.h,),
          CustomFadeInRight(
            duration: 400,
            child: CustomTextField(controller: TextEditingController(),
            hintText: context.tr(LangKeys.password),
            keyboardType: TextInputType.visiblePassword,
            obscureText: isObsureText,
            validator: (value) {
                if(value == null || value.isEmpty ||value.length<6){
                  return context.tr(LangKeys.password);
                }
                return null;
            },
            suffixIcon: IconButton(onPressed: (){
              setState(() {
                isObsureText =!isObsureText;

              });
            }, icon: Icon( isObsureText ? Icons.visibility_off : Icons.visibility)),
                    
            ),
          ),
        ],
      ),
    );
  }
}