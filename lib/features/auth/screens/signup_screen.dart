import 'package:asroo_store/core/extensions/constant_extensions.dart';
import 'package:asroo_store/features/auth/refcactors/auth.custom.dart';
import 'package:asroo_store/features/auth/refcactors/signup_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:CustomPaint(
        size: Size(MediaQuery.of(context).size.width, 150.h ),
        painter: AuthCustomPainter(gradient: 
          LinearGradient(colors: [context.colors.bluePinkLight!,context.colors.bluePinkLight!,context.colors.bluePinkLight!,context.colors.bluePinkDark!,])),
      ), 
      body: SafeArea(child: SignupViewBody()),
    );
  }
}