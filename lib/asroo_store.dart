import 'package:asroo_store/core/app/env.variable.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'asroo_store',
      debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
      theme: ThemeData(
      ),
      home: Scaffold(appBar: AppBar(
        title: const Text("Asroo Store")),
      ),);
    
  }
}