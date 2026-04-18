import 'dart:async';

import 'package:asroo_store/core/app/route_names.dart';
import 'package:asroo_store/core/extensions/constant_extensions.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplahViewBody extends StatefulWidget {
  const SplahViewBody({super.key});

  @override
  State<SplahViewBody> createState() => _SplahViewBodyState();
}


class _SplahViewBodyState extends State<SplahViewBody> {
@override
void initState() {
  super.initState();
  
  timer();
}
  @override
  Widget build(BuildContext context) {
      return Container(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Lottie.asset('asstes/images/splash.json',fit: BoxFit.fill)
          ],
        ),
      );
    }



    Future<void> timer() async{
  Future.delayed(const Duration(seconds: 5), () async {
    
     // ignore: use_build_context_synchronously
     await context.pushReplacement(RouteNames.login);    
  });
}
}
