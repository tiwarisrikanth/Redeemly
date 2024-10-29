import 'package:bounce/bounce.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:redeemly/auth/otp_validation.dart';
import 'package:redeemly/constants/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
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
                      'assets/images/login_page.png',
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
                      "Earn coins",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Gap(10),
                FadeTransition(
                  opacity: _fadeInAnimation,
                  child: Center(
                    child: Text(
                      "Collect Coins, find exclusive\ndiscounts in your city",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
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
                          Row(
                            children: [
                              Gap(10),
                              Container(
                                height: 60,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: lightBlue,
                                ),
                                child: Stack(
                                  children: [
                                    Center(
                                      child: CountryCodePicker(
                                        showFlag: true,
                                        onChanged: print,
                                        initialSelection: 'US',
                                        showCountryOnly: false,
                                        hideMainText: true,
                                        alignLeft: false,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(
                                            Icons.keyboard_arrow_down_rounded),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Gap(20),
                              Expanded(
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: lightBlue,
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Enter Mobile Number",
                                          hintStyle: GoogleFonts.poppins(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.grey.withOpacity(0.8),
                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Gap(10),
                            ],
                          ),
                          Gap(10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Bounce(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                    child: LoginScreen2(),
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
                                    "Get OTP",
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
