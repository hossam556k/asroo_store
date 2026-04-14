import 'dart:io';
import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
  ? await Firebase.initializeApp(
    options: const FirebaseOptions(apiKey: "AIzaSyDHLvb812v7H0ZQ_L7X3kS5PfRhTzqtQ8M", appId: '1:326872340451:android:389a8b0dd5705685c2f2d6', messagingSenderId: '326872340451', projectId: 'asroostore-fe079')
  ):
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'asroo_store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: Scaffold(appBar: AppBar(
        title: const Text("Asroo Store")),
      ),);
    
  }
}
