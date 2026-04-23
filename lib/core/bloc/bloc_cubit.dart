import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

import 'bloc_state.dart';

class AppCubit extends Cubit<AppState> {
  final SharedPreferences prefs;

  AppCubit(this.prefs) : super(AppState.initial());

  void loadSettings() {
    final isDark = prefs.getBool('isDark') ?? false;
    final langCode = prefs.getString('lang') ?? 'en';

    emit(state.copyWith(
      isDark: isDark,
      locale: Locale(langCode),
    ));
  }

  void toggleTheme() {
    final newValue = !state.isDark;
    prefs.setBool('isDark', newValue);

    emit(state.copyWith(isDark: newValue));
  }

  void changeLanguage(String langCode) {
    prefs.setString('lang', langCode);

    emit(state.copyWith(locale: Locale(langCode)));
  }
}