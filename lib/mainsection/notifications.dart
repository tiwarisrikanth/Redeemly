import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redeemly/constants/colors.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  void initState() {
    print(notifications.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: priamryColor,
      appBar: AppBar(
        backgroundColor: priamryColor,
        title: Text(
          "Notifications",
          style: GoogleFonts.poppins(
            fontSize: 17,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(30),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
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
                padding: const EdgeInsets.only(top: 12.0),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: notifications.length,
                  itemBuilder: (context, index) {
                    final notification = notifications[index];
                    return NotificationCard(notification: notification);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
/*

ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  final notification = notifications[index];
                  return NotificationCard(notification: notification);
                },
              ),

 */

class NotificationCard extends StatelessWidget {
  final NotificationModel notification;

  const NotificationCard({
    Key? key,
    required this.notification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: notification.isCoins
                    ? const Color(0xFFFFB800)
                    : Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                notification.isCoins
                    ? Icons.monetization_on_outlined
                    : Icons.article_outlined,
                color: notification.isCoins ? Colors.white : Colors.grey[600],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    notification.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              notification.timeAgo,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationModel {
  final String title;
  final String description;
  final String timeAgo;
  final bool isCoins;

  NotificationModel({
    required this.title,
    required this.description,
    required this.timeAgo,
    required this.isCoins,
  });
}

// Sample data
final List<NotificationModel> notifications = [
  NotificationModel(
    title: 'India won the match',
    description: 'India won the match and take the world cup happy.',
    timeAgo: '6 days ago',
    isCoins: false,
  ),
  NotificationModel(
    title: 'Received 100 coins',
    description: 'Alex send to you 100 coins through coins share.',
    timeAgo: '1 days ago',
    isCoins: true,
  ),
  NotificationModel(
    title: 'India won the match',
    description: 'India won the match and take the world cup happy.',
    timeAgo: '6 days ago',
    isCoins: false,
  ),
  NotificationModel(
    title: 'Received 100 coins',
    description: 'Alex send to you 100 coins through coins share.',
    timeAgo: '1 days ago',
    isCoins: true,
  ),
  NotificationModel(
    title: 'India won the match',
    description: 'India won the match and take the world cup happy.',
    timeAgo: '6 days ago',
    isCoins: false,
  ),
  NotificationModel(
    title: 'Received 100 coins',
    description: 'Alex send to you 100 coins through coins share.',
    timeAgo: '1 days ago',
    isCoins: true,
  ),
  NotificationModel(
    title: 'India won the match',
    description: 'India won the match and take the world cup happy.',
    timeAgo: '6 days ago',
    isCoins: false,
  ),
  NotificationModel(
    title: 'Received 100 coins',
    description: 'Alex send to you 100 coins through coins share.',
    timeAgo: '1 days ago',
    isCoins: true,
  ),
  NotificationModel(
    title: 'India won the match',
    description: 'India won the match and take the world cup happy.',
    timeAgo: '6 days ago',
    isCoins: false,
  ),
  NotificationModel(
    title: 'Received 100 coins',
    description: 'Alex send to you 100 coins through coins share.',
    timeAgo: '1 days ago',
    isCoins: true,
  ),
  NotificationModel(
    title: 'India won the match',
    description: 'India won the match and take the world cup happy.',
    timeAgo: '6 days ago',
    isCoins: false,
  ),
  NotificationModel(
    title: 'Received 100 coins',
    description: 'Alex send to you 100 coins through coins share.',
    timeAgo: '1 days ago',
    isCoins: true,
  ),
  NotificationModel(
    title: 'India won the match',
    description: 'India won the match and take the world cup happy.',
    timeAgo: '6 days ago',
    isCoins: false,
  ),
  NotificationModel(
    title: 'Received 100 coins',
    description: 'Alex send to you 100 coins through coins share.',
    timeAgo: '1 days ago',
    isCoins: true,
  ),
  NotificationModel(
    title: 'India won the match',
    description: 'India won the match and take the world cup happy.',
    timeAgo: '6 days ago',
    isCoins: false,
  ),
  NotificationModel(
    title: 'Received 100 coins',
    description: 'Alex send to you 100 coins through coins share.',
    timeAgo: '1 days ago',
    isCoins: true,
  ),
  NotificationModel(
    title: 'India won the match',
    description: 'India won the match and take the world cup happy.',
    timeAgo: '6 days ago',
    isCoins: false,
  ),
  NotificationModel(
    title: 'Received 100 coins',
    description: 'Alex send to you 100 coins through coins share.',
    timeAgo: '1 days ago',
    isCoins: true,
  ),
  NotificationModel(
    title: 'India won the match',
    description: 'India won the match and take the world cup happy.',
    timeAgo: '6 days ago',
    isCoins: false,
  ),
  NotificationModel(
    title: 'Received 100 coins',
    description: 'Alex send to you 100 coins through coins share.',
    timeAgo: '1 days ago',
    isCoins: true,
  ),
  NotificationModel(
    title: 'India won the match',
    description: 'India won the match and take the world cup happy.',
    timeAgo: '6 days ago',
    isCoins: false,
  ),
  NotificationModel(
    title: 'Received 100 coins',
    description: 'Alex send to you 100 coins through coins share.',
    timeAgo: '1 days ago',
    isCoins: true,
  ),
  NotificationModel(
    title: 'India won the match',
    description: 'India won the match and take the world cup happy.',
    timeAgo: '6 days ago',
    isCoins: false,
  ),
  NotificationModel(
    title: 'Received 100 coins',
    description: 'Alex send to you 100 coins through coins share.',
    timeAgo: '1 days ago',
    isCoins: true,
  ),
  NotificationModel(
    title: 'India won the match',
    description: 'India won the match and take the world cup happy.',
    timeAgo: '6 days ago',
    isCoins: false,
  ),
  NotificationModel(
    title: 'Received 100 coins',
    description: 'Alex send to you 100 coins through coins share.',
    timeAgo: '1 days ago',
    isCoins: true,
  ),
  NotificationModel(
    title: 'India won the match',
    description: 'India won the match and take the world cup happy.',
    timeAgo: '6 days ago',
    isCoins: false,
  ),
  NotificationModel(
    title: 'Received 100 coins',
    description: 'Alex send to you 100 coins through coins share.',
    timeAgo: '1 days ago',
    isCoins: true,
  ),
];
