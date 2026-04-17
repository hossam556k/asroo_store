import 'package:asroo_store/core/app/env.variable.dart';
import 'package:asroo_store/core/app/netwoek_check.dart';
import 'package:asroo_store/screens/no_network.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: ConnectionCheck.instance.stream,
      initialData: true,
      builder: (context, snapshot) {
        final isOnline = snapshot.data ?? true;

        return MaterialApp(
          title: 'asroo_store',
          debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
          theme: ThemeData(),

          home: isOnline
              ? Scaffold(appBar: AppBar(title: const Text("asroo storee"),),)
              : const NoNetworkScreen(),
        );
      },
    );
  }
}