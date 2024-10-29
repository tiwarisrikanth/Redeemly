import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:redeemly/constants/colors.dart';
import 'package:redeemly/mainsection/explore/facts/facts.dart';
import 'package:redeemly/mainsection/explore/news/news.dart';
import 'package:redeemly/mainsection/explore/quiz/quiz.dart';
import 'package:redeemly/mainsection/explore/steps/mainsteps.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Text(
                'Explore',
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    blurRadius: 2.0, // soften the shadow
                    spreadRadius: 5.0, //extend the shadow
                    offset: Offset(
                      1.0, // Move to right 10  horizontally
                      1.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(7),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Select category',
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: balck,
                      ),
                    ),
                  ),
                  Gap(7),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Bounce(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              child: Mainsteps(),
                              type: PageTransitionType.fade),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: priamryColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 13.0, right: 13.0, top: 22.0, bottom: 22.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/steps.png',
                                height: 80,
                                width: 80,
                              ),
                              Gap(14),
                              Expanded(
                                child: Text(
                                  "Steps Tracker",
                                  style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Gap(7),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Bounce(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              child: QuizScreen(),
                              type: PageTransitionType.fade),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: priamryColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 13.0, right: 13.0, top: 22.0, bottom: 22.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/quiz.png',
                                height: 80,
                                width: 80,
                              ),
                              Gap(14),
                              Expanded(
                                child: Text(
                                  "Quiz",
                                  style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Bounce(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              child: NewsScreen(),
                              type: PageTransitionType.fade),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: priamryColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 13.0, right: 13.0, top: 22.0, bottom: 22.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/news.png',
                                height: 80,
                                width: 80,
                              ),
                              Gap(14),
                              Expanded(
                                child: Text(
                                  "News",
                                  style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Bounce(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              child: FactsScreen(),
                              type: PageTransitionType.fade),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: priamryColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 13.0, right: 13.0, top: 22.0, bottom: 22.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/facts.png',
                                height: 80,
                                width: 80,
                              ),
                              Gap(14),
                              Expanded(
                                child: Text(
                                  "Facts",
                                  style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 130,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
