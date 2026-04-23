import 'dart:ui';

class AppState {
  final bool isDark;
  final Locale locale;

  AppState({
    required this.isDark,
    required this.locale,
  });

  factory AppState.initial() {
    return AppState(
      isDark: false,
      locale: const Locale('en'),
    );
  }

  AppState copyWith({
    bool? isDark,
    Locale? locale,
  }) {
    return AppState(
      isDark: isDark ?? this.isDark,
      locale: locale ?? this.locale,
    );
  }
}