import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:redeemly/constants/colors.dart';
import 'package:redeemly/mainsection/share/chat/chatscreen.dart';

class SharingScreen extends StatelessWidget {
  const SharingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: priamryColor,
      // backgroundColor: const Color(0xFFF8F6F3),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sharing title
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: Text(
                'Sharing',
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
                children: [
                  Gap(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey[400], size: 22),
                          const SizedBox(width: 12),
                          Text(
                            'Search user ID',
                            style: GoogleFonts.poppins(
                              color: Colors.grey[400],
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(12),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width,
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
                      // margin: const EdgeInsets.only(top: 16),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 8.0, right: 8.0),
                        child: Center(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            children: [
                              _buildContactSuggestion(
                                  'Marina', '👋', const Color(0xFFFFE8EC)),
                              _buildContactSuggestion(
                                  'Adil', '😂', const Color(0xFFFFF7E6)),
                              _buildContactSuggestion(
                                  'Marina', '👋', const Color(0xFFFFE8EC)),
                              _buildContactSuggestion(
                                  'Dean', '🤔', const Color(0xFFE8F4FF)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 8),
                    children: [
                      Bounce(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              child: ChatScreen(),
                              type: PageTransitionType.fade,
                            ),
                          );
                        },
                        child: _buildMessageTile(
                          'Alex Linderson',
                          'How are you today?',
                          '2 min ago',
                          const Color(0xFFE8FFF1),
                          isOnline: true,
                          unreadCount: 3,
                        ),
                      ),
                      _buildMessageTile(
                        'John Ahraham',
                        'Hey! Can you join the meeting?',
                        '2 min ago',
                        const Color(0xFFFFF7E6),
                      ),
                      _buildMessageTile(
                        'Sabila Sayma',
                        'How are you today?',
                        '2 min ago',
                        const Color(0xFFFFE8EC),
                      ),
                      _buildMessageTile(
                        'John Borino',
                        'Have a good day 🌸',
                        '2 min ago',
                        const Color(0xFFE8F4FF),
                        isOnline: true,
                      ),
                      _buildMessageTile(
                        'Alex Linderson',
                        'How are you today?',
                        '2 min ago',
                        const Color(0xFFE8FFF1),
                        isOnline: true,
                        unreadCount: 3,
                      ),
                      _buildMessageTile(
                        'John Ahraham',
                        'Hey! Can you join the meeting?',
                        '2 min ago',
                        const Color(0xFFFFF7E6),
                      ),
                      _buildMessageTile(
                        'Sabila Sayma',
                        'How are you today?',
                        '2 min ago',
                        const Color(0xFFFFE8EC),
                      ),
                      _buildMessageTile(
                        'John Borino',
                        'Have a good day 🌸',
                        '2 min ago',
                        const Color(0xFFE8F4FF),
                        isOnline: true,
                      ),
                      _buildMessageTile(
                        'Alex Linderson',
                        'How are you today?',
                        '2 min ago',
                        const Color(0xFFE8FFF1),
                        isOnline: true,
                        unreadCount: 3,
                      ),
                      _buildMessageTile(
                        'John Ahraham',
                        'Hey! Can you join the meeting?',
                        '2 min ago',
                        const Color(0xFFFFF7E6),
                      ),
                      _buildMessageTile(
                        'Sabila Sayma',
                        'How are you today?',
                        '2 min ago',
                        const Color(0xFFFFE8EC),
                      ),
                      _buildMessageTile(
                        'John Borino',
                        'Have a good day 🌸',
                        '2 min ago',
                        const Color(0xFFE8F4FF),
                        isOnline: true,
                      ),
                      Gap(90)
                    ],
                  ),
                ],
              ),
            ),

            // Search bar

            // Suggested contacts

            // Recent messages
          ],
        ),
      ),
    );
  }

  Widget _buildContactSuggestion(String name, String emoji, Color bgColor) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  border: Border.all(color: bgColor),
                  shape: BoxShape.circle,
                ),
                child: Align(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: bgColor,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        emoji,
                        style: const TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            name,
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          Gap(10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFF2F6FED)),
            ),
            child: Text(
              '+ Add',
              style: GoogleFonts.poppins(
                color: const Color(0xFF2F6FED),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageTile(
    String name,
    String message,
    String time,
    Color bgColor, {
    bool isOnline = false,
    int unreadCount = 0,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: Stack(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: bgColor,
              shape: BoxShape.circle,
            ),
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
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
        ],
      ),
      title: Text(
        name,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
      subtitle: Text(
        message,
        style: GoogleFonts.poppins(
          color: Colors.grey[600],
          fontSize: 13,
          height: 1.5,
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            time,
            style: GoogleFonts.poppins(
              color: Colors.grey[400],
              fontSize: 12,
            ),
          ),
          if (unreadCount > 0) ...[
            const SizedBox(height: 4),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xFF2F6FED),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                unreadCount.toString(),
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, bool isSelected) {
    return Icon(
      icon,
      color: isSelected ? const Color(0xFF2F6FED) : Colors.grey[400],
      size: 24,
    );
  }
}
