import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoNetworkScreen extends StatefulWidget {
  const NoNetworkScreen({super.key});

  @override
  State<NoNetworkScreen> createState() => _NoNetworkScreenState();
}

class _NoNetworkScreenState extends State<NoNetworkScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SafeArea(child: Padding(padding: EdgeInsets.all(8),child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Lottie.asset('asstes/images/Wifi loading Lottie Animation.json')
        ],
      )
      ,)),
    );
  }
}