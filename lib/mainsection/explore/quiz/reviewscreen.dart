import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:redeemly/constants/colors.dart';
import 'package:redeemly/mainsection/mainsection.dart';

class QuizReviewScreen extends StatelessWidget {
  const QuizReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F1EA),
      appBar: AppBar(
        backgroundColor: priamryColor,
        title: Text(
          "Review Answers",
          style: GoogleFonts.poppins(
            fontSize: 17,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Score Card
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 80,
                        height: 80,
                        child: CircularProgressIndicator(
                          value: 13 / 30,
                          backgroundColor: thirdColor.withOpacity(0.2),
                          color: thirdColor,
                          strokeWidth: 8,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 15.0),
                        child: Text(
                          '03/04',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(20),
                  // const SizedBox(width: 16),
                  Text(
                    'You answered 3\nout of 4 quetions.',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Best Performers Title
            Text(
              'Best Performers in Your friends',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 16),

            // Performers List
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    _buildPerformerItem('🥇', 'Alex Linderson',
                        '200 quetions answered', Colors.cyan.shade100, true),
                    const SizedBox(height: 16),
                    _buildPerformerItem('🥈', 'John Ahraham',
                        '200 quetions answered', Colors.amber.shade100, false),
                    const SizedBox(height: 16),
                    _buildPerformerItem('🥉', 'Sabila Sayma',
                        '200 quetions answered', Colors.pink.shade100, false),
                    const SizedBox(height: 16),
                    _buildPerformerItem(
                        '4',
                        'John Borino',
                        '200 quetions answered',
                        thirdColor.withOpacity(0.4),
                        true),
                    const SizedBox(height: 16),
                    _buildPerformerItem('5', 'Angel Dayna',
                        '200 quetions answered', Colors.green.shade100, false),
                  ],
                ),
              ),
            ),
            Gap(15),
            Bounce(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    PageTransition(
                      child: MainSection(),
                      type: PageTransitionType.fade,
                    ),
                    (context) => false);
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: white,
                  border: Border.all(color: thirdColor),
                ),
                child: Center(
                  child: Text(
                    'Done',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: thirdColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Gap(10)
          ],
        ),
      ),
    );
  }

  Widget _buildPerformerItem(String rank, String name, String details,
      Color avatarColor, bool isOnline) {
    return Row(
      children: [
        SizedBox(
            width: 24,
            child: Text(
              rank,
              style: GoogleFonts.poppins(
                fontSize: 22,
              ),
            )),
        const SizedBox(width: 12),
        Stack(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: avatarColor,
            ),
            if (isOnline)
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Text(
              details,
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
