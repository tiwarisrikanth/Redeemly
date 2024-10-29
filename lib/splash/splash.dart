import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:redeemly/auth/login_sec.dart';
import 'package:redeemly/constants/colors.dart';

class ScplashScreen extends StatefulWidget {
  const ScplashScreen({super.key});

  @override
  State<ScplashScreen> createState() => _ScplashScreenState();
}

class _ScplashScreenState extends State<ScplashScreen> {
  bool expand = false;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        expand = true;
      });
      print(expand);
    });
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(context,
          PageTransition(child: LoginScreen(), type: PageTransitionType.fade));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: priamryColor,
        body: Center(
          child: AnimatedContainer(
            width: expand == false ? 150 : 850,
            duration: Duration(seconds: 1),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(
              'assets/images/redeemly.png',
            ))),
          ),
        ));
  }
}
