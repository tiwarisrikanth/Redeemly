import 'package:bounce/bounce.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:redeemly/constants/colors.dart';
import 'package:redeemly/mainsection/explore/facts/facts.dart';
import 'package:redeemly/mainsection/explore/news/news.dart';
import 'package:redeemly/mainsection/explore/quiz/quiz.dart';
import 'package:redeemly/mainsection/explore/steps/mainsteps.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: priamryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(10),
            Row(
              children: [
                Gap(20),
                Text(
                  'Hey ',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: balck,
                  ),
                ),
                Text(
                  'Manoj! ',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: balck,
                  ),
                )
              ],
            ),
            Gap(20),
            CarouselSlider(
              options: CarouselOptions(
                height: 150,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                // enlargeCenterPage: true,
                enlargeFactor: 0.3,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              items: [1, 2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              blurRadius: 2.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                              offset: Offset(
                                0.0, // Move to right 10  horizontally
                                1.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Earn coins &\nRedeem rewards',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: balck,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Gap(10),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: thirdColor,
                                      borderRadius: BorderRadius.circular(90),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 18.0,
                                          right: 18.0,
                                          top: 10.0,
                                          bottom: 10.0),
                                      child: Text(
                                        "Let's Go",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          color: white,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                  child: Image.asset('assets/images/illus.png'))
                            ],
                          ),
                        ));
                  },
                );
              }).toList(),
            ),
            Gap(20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
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
                  color: white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Gap(10),
                    Text(
                      "How the app will work & How to redeem!",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: balck,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Gap(12),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 190,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 2.0, // soften the shadow
                              spreadRadius: 5.0, //extend the shadow
                              offset: Offset(
                                1.0, // Move to right 10  horizontally
                                1.0, // Move to bottom 10 Vertically
                              ),
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: balck.withOpacity(0.2),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        'https://images.pexels.com/photos/28951017/pexels-photo-28951017/free-photo-of-dramatic-mountain-landscape-in-erbaa-turkiye.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                height: double.infinity,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24),
                                  color: balck.withOpacity(0.4),
                                ),
                                child: Icon(
                                  Icons.play_arrow,
                                  color: white,
                                  size: 52,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Gap(15),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Earn Coins",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: balck,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Gap(15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Bounce(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    child: Mainsteps(),
                                    type: PageTransitionType.fade),
                              );
                            },
                            child: Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: lightBlue,
                                  border: Border.all(
                                      color: balck.withOpacity(0.1))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/images/steps.png',
                                    height: 60,
                                    width: 60,
                                  ),
                                  Text(
                                    'Steps',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Gap(15),
                          Bounce(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    child: QuizScreen(),
                                    type: PageTransitionType.fade),
                              );
                            },
                            child: Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: lightBlue,
                                  border: Border.all(
                                      color: balck.withOpacity(0.1))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/images/quiz.png',
                                    height: 60,
                                    width: 60,
                                  ),
                                  Text(
                                    'Quiz',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Gap(15),
                          Bounce(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    child: NewsScreen(),
                                    type: PageTransitionType.fade),
                              );
                            },
                            child: Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: lightBlue,
                                  border: Border.all(
                                      color: balck.withOpacity(0.1))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/images/news.png',
                                    height: 60,
                                    width: 60,
                                  ),
                                  Text(
                                    'News',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Gap(15),
                          Bounce(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    child: FactsScreen(),
                                    type: PageTransitionType.fade),
                              );
                            },
                            child: Container(
                              height: 120,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: lightBlue,
                                  border: Border.all(
                                      color: balck.withOpacity(0.1))),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/images/facts.png',
                                    height: 60,
                                    width: 60,
                                  ),
                                  Text(
                                    'Facts',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Gap(15),
                        ],
                      ),
                    ),
                    Gap(15),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Redeem rewards",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: balck,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Gap(15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 120,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: lightBlue,
                                border:
                                    Border.all(color: balck.withOpacity(0.1))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'assets/images/grocery.png',
                                  height: 60,
                                  width: 60,
                                ),
                                Text(
                                  'Grocery',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Gap(15),
                          Container(
                            height: 120,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: lightBlue,
                                border:
                                    Border.all(color: balck.withOpacity(0.1))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'assets/images/food.png',
                                  height: 60,
                                  width: 60,
                                ),
                                Text(
                                  'Food',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Gap(15),
                          Container(
                            height: 120,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: lightBlue,
                                border:
                                    Border.all(color: balck.withOpacity(0.1))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'assets/images/shop.png',
                                  height: 60,
                                  width: 60,
                                ),
                                Text(
                                  'Outlets',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Gap(15),
                        ],
                      ),
                    ),
                    Gap(90)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
