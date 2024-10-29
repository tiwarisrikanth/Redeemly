import 'package:bounce/bounce.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pinput.dart';
import 'package:redeemly/auth/register.dart';
import 'package:redeemly/constants/colors.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _fadeInAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(183, 220, 250, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      backgroundColor: priamryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Gap(30),
                FadeTransition(
                  opacity: _fadeInAnimation,
                  child: Center(
                    child: Image.asset(
                      'assets/images/otp_page.png',
                      height: 170,
                      width: 180,
                    ),
                  ),
                ),
                Gap(10),
                FadeTransition(
                  opacity: _fadeInAnimation,
                  child: Center(
                    child: Text(
                      "OTP Verification",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Gap(2),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FadeTransition(
                    opacity: _fadeInAnimation,
                    child: Center(
                      child: Text(
                        "Enter 4-digit code sent to your mobile number 0909090909",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Gap(20),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: FadeTransition(
                    opacity: _fadeInAnimation,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(40)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Gap(30),
                          Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: Pinput(
                              length: 6,
                              defaultPinTheme: defaultPinTheme,
                              focusedPinTheme: focusedPinTheme,
                              submittedPinTheme: submittedPinTheme,
                              validator: (s) {
                                return null;
                              },
                              pinputAutovalidateMode:
                                  PinputAutovalidateMode.onSubmit,
                              showCursor: true,
                              onCompleted: (pin) => print(pin),
                            ),
                          ),
                          Gap(20),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Resend OTP",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                          Gap(20),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Bounce(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    child: LoginScreen3(),
                                    type: PageTransitionType.fade,
                                  ),
                                );
                              },
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: thirdColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Verify OTP",
                                    style: GoogleFonts.poppins(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Gap(10),
                          Row(
                            children: [
                              Gap(40),
                              Expanded(child: Divider()),
                              Gap(10),
                              Text(
                                "OR",
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                              ),
                              Gap(10),
                              Expanded(child: Divider()),
                              Gap(40),
                            ],
                          ),
                          Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              socialLoginButton(
                                imageUrl:
                                    'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                              ),
                              Gap(20),
                              socialLoginButton(
                                imageUrl:
                                    'https://qph.cf2.quoracdn.net/main-qimg-2703f95b379a9c98bdf516b7b5bfe43d.webp',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 180,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget socialLoginButton({required String imageUrl}) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: Colors.white,
        border: Border.all(color: Colors.lightBlueAccent),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Image.network(imageUrl),
      ),
    );
  }
}
