import 'dart:io';

import 'package:asroo_store/asroo_store.dart';
import 'package:asroo_store/core/app/env.variable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:easy_localization/easy_localization.dart';


void main() async{
  await EnvVariable.instance.init(envType: EnvTyoeEnum.dev);
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  Platform.isAndroid
  ? await Firebase.initializeApp(
    options: const FirebaseOptions(apiKey: 'AIzaSyDHLvb812v7H0ZQ_L7X3kS5PfRhTzqtQ8M', appId: '1:326872340451:android:389a8b0dd5705685c2f2d6', messagingSenderId: '326872340451', projectId: 'asroostore-fe079')
  ):
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_){
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('ar'),
        startLocale: const Locale('ar'), // 👈 ضيف السطر ده


      child: const MyApp(),
    ),
  );
  });
}

