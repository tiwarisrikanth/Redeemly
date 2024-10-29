import 'package:bounce/bounce.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:redeemly/constants/colors.dart';
import 'package:redeemly/mainsection/explore/explore.dart';
import 'package:redeemly/mainsection/home/home.dart';
import 'package:redeemly/mainsection/notifications.dart';
import 'package:redeemly/mainsection/redeem/redeem.dart';
import 'package:redeemly/mainsection/share/share.dart';

class MainSection extends StatefulWidget {
  @override
  _MainSectionState createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection>
    with SingleTickerProviderStateMixin {
  int _tabIndex = 0;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        color: white,
        child: SafeArea(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Builder(builder: (context) {
                      return Bounce(
                        onTap: () {
                          Scaffold.of(context).closeDrawer();
                        },
                        child: Icon(
                          Icons.cancel,
                          color: Colors.red,
                        ),
                      );
                    }),
                  )),
              Gap(10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://images.pexels.com/photos/18091667/pexels-photo-18091667/free-photo-of-istanbul-istinye.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Gap(10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Srikanth",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Gap(5),
                              Text(
                                "View Profile",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.blue.shade800,
                                ),
                              )
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.discount_outlined),
                        Gap(10),
                        Expanded(
                          child: Text(
                            "Active Coupons",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.history),
                        Gap(10),
                        Expanded(
                          child: Text(
                            "History",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.sunny),
                        Gap(10),
                        Expanded(
                          child: Text(
                            "Dark Mode",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.people),
                        Gap(10),
                        Expanded(
                          child: Text(
                            "Refer a friend",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.article),
                        Gap(10),
                        Expanded(
                          child: Text(
                            "Legal",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black12.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.info),
                        Gap(10),
                        Expanded(
                          child: Text(
                            "Need Help?",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.red.withOpacity(0.3),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          color: Colors.red,
                        ),
                        Gap(10),
                        Expanded(
                          child: Text(
                            "Logout",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Gap(60),
              Text(
                'Version 2.1.1',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.withOpacity(0.3),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: priamryColor,
      extendBody: true,
      bottomNavigationBar: CircleNavBar(
        levels: ["Home", "Explore", "Redeem", "Share"],
        circleColor: thirdColor,
        activeLevelsStyle: GoogleFonts.poppins(
          fontSize: 12,
          color: balck,
          fontWeight: FontWeight.w500,
        ),
        inactiveLevelsStyle: GoogleFonts.poppins(
          fontSize: 12,
          color: Colors.grey,
          fontWeight: FontWeight.w300,
        ),
        activeIcons: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.travel_explore,
            color: Colors.white,
          ),
          Icon(
            Icons.redeem,
            color: Colors.white,
          ),
          Icon(
            Icons.people,
            color: Colors.white,
          )
        ],
        inactiveIcons: const [
          Icon(
            Icons.home_outlined,
            color: Colors.grey,
          ),
          Icon(
            Icons.travel_explore_outlined,
            color: Colors.grey,
          ),
          Icon(
            Icons.redeem_outlined,
            color: Colors.grey,
          ),
          Icon(
            Icons.people_outline,
            color: Colors.grey,
          )
        ],
        color: secondaryColor,
        height: 60,
        circleWidth: 50,
        activeIndex: tabIndex,
        onTap: (index) {
          tabIndex = index;
          pageController.jumpToPage(tabIndex);
        },
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        shadowColor: Colors.grey,
        elevation: 10,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex = v;
        },
        children: [
          HomeScreen(),
          // Container(
          //   width: double.infinity,
          //   height: double.infinity,
          // ),
          ExploreScreen(),
          // Container(
          //   width: double.infinity,
          //   height: double.infinity,
          // ),
          RedeemScreen(),
          // Container(
          //   width: double.infinity,
          //   height: double.infinity,
          // ),
          SharingScreen()
          // Container(
          //   width: double.infinity,
          //   height: double.infinity,
          // ),
        ],
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Align(
              child: Builder(builder: (context) {
                return Bounce(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: white,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.menu,
                          size: 27,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 17,
                        ),
                      ],
                    ),
                  ),
                );
              }),
            )
          ],
        ),
        actions: [
          Align(
            child: Container(
              height: 30,
              // width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                color: white,
                border: Border.all(color: lightBlue),
              ),
              child: Row(
                children: [
                  Gap(6),
                  Image.asset(
                    'assets/images/coin.png',
                    height: 20,
                  ),
                  Gap(6),
                  Text(
                    "200",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: balck,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Gap(6),
                ],
              ),
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: NotificationsScreen(),
                        type: PageTransitionType.fade));
              },
              icon: Icon(
                Icons.notifications_active_outlined,
                color: thirdColor,
              ))
        ],
      ),
    );
  }
}
