import 'dart:io';

import 'package:asroo_store/asroo_store.dart';
import 'package:asroo_store/core/app/env.variable.dart';
import 'package:asroo_store/core/bloc/bloc_cubit.dart';
import 'package:asroo_store/core/bloc/bloc_observer.dart';
import 'package:asroo_store/core/get_it/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  // 1️⃣ لازم يكون أول سطر دايماً
  WidgetsFlutterBinding.ensureInitialized();

  // 2️⃣ EasyLocalization
  await EasyLocalization.ensureInitialized();

  // 3️⃣ EnvVariable — بيحدد dev/prod
  await EnvVariable.instance.init(envType: EnvTyoeEnum.dev);

  // 4️⃣ GetIt — بيسجل كل الـ dependencies
  await setupGetIt();

  // 5️⃣ بيجيب الإعدادات المحفوظة (ثيم - لغة)
  getIt<AppCubit>().loadSettings();

  // 6️⃣ BlocObserver — بيراقب كل الـ Cubits
  Bloc.observer = AppBlocObserver();

  // 7️⃣ Firebase ✅ try-catch بدل isEmpty
  if (Platform.isAndroid || Platform.isIOS) {
    try {
      await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: 'AIzaSyDHLvb812v7H0ZQ_L7X3kS5PfRhTzqtQ8M',
          appId: '1:326872340451:android:389a8b0dd5705685c2f2d6',
          messagingSenderId: '326872340451',
          projectId: 'asroostore-fe079',
        ),
      );
    } on FirebaseException catch (e) {
      // لو duplicate-app بس تجاهله وكمّل
      // لو error تاني ارميه عشان تعرفه
      if (e.code != 'duplicate-app') rethrow;
    }
  }

  // 8️⃣ اتجاه الشاشة
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // 9️⃣ runApp
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ar'),
      startLocale: const Locale('ar'),
      child: BlocProvider.value(
        value: getIt<AppCubit>(),
        child: const MyApp(),
      ),
    ),
  );
}