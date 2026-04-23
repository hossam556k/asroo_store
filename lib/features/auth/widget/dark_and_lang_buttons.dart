import 'package:asroo_store/core/bloc/bloc_cubit.dart';
import 'package:asroo_store/core/bloc/bloc_state.dart';
import 'package:asroo_store/core/common/animation/animation_do.dart';
import 'package:asroo_store/core/common/services/lang_key.dart';
import 'package:asroo_store/core/common/widgets/custom_linear_button.dart';
import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/constant_extensions.dart';
import 'package:asroo_store/core/get_it/injection.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = getIt<AppCubit>(); // ✅ GetIt

    return BlocBuilder<AppCubit, AppState>(
      bloc: cubit,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            // ✅ زرار الثيم
            CustomFadeInRight(
              duration: 400,
              child: CustomLinearButton(
                onPressed: () => cubit.toggleTheme(), // ✅ بيغير الثيم
                child: Icon(
                  // ✅ الأيقونة بتتغير مع الحالة
                  state.isDark
                      ? Icons.dark_mode_rounded
                      : Icons.light_mode_rounded,
                  color: Colors.white,
                ),
              ),
            ),

            // ✅ زرار اللغة
            CustomFadeInLeft(
              duration: 400,
              child: CustomLinearButton(
                onPressed: () {
                  // ✅ Toggle بين عربي وإنجليزي
                  final newLang =
                      state.locale.languageCode == 'ar' ? 'en' : 'ar';
                  cubit.changeLanguage(newLang);        // غيّر في Cubit
                  context.setLocale(Locale(newLang));   // غيّر في EasyLocalization
                },
                height: 44.h,
                width: 100.w,
                child: TextApp(
                  // ✅ النص بيتغير مع اللغة تلقائياً
                  text: context.tr(LangKeys.language),
                  theme: context.textStyle.copyWith(
                    fontWeight: FontWeightHelper.bold,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
            
          ],
        );
      },
    );
  }
}