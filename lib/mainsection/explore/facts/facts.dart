import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redeemly/constants/colors.dart';

class FactsScreen extends StatefulWidget {
  const FactsScreen({super.key});

  @override
  State<FactsScreen> createState() => _FactsScreenState();
}

class _FactsScreenState extends State<FactsScreen> {
  int selectedTabIndex = 0;
  List<String> tabs = ['All', 'Facts', 'Fun facts', 'Startup stories'];

  // Sample facts data
  List<Map<String, String>> facts = [
    {
      'image': 'assets/lion.jpg',
      'title': 'Lions swallow their food!',
      'description':
          'Snakes swallow their food whole because they can\'t chew. They have flexible lower jaws that.'
    },
    {
      'image': 'assets/lion.jpg',
      'title': 'Another Fact',
      'description': 'This is another interesting fact about animals.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F1EA),
      appBar: AppBar(
        backgroundColor: priamryColor,
        title: Text(
          "Facts",
          style: GoogleFonts.poppins(
            fontSize: 17,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // _buildHeader(),

          _buildTabBar(),
          const SizedBox(height: 16),
          Expanded(
            child: Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 250,
                child: Swiper(
                  itemWidth: 310.0,
                  layout: SwiperLayout.STACK,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return NewsCard();
                  },
                  viewportFraction: 0.7,
                  scale: 1,
                ),
              ),
            ),
          ),
          // Expanded(
          //   child: _buildSwipeableCards(),
          // ),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: tabs.asMap().entries.map((entry) {
          final isSelected = entry.key == selectedTabIndex;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: InkWell(
              onTap: () => setState(() => selectedTabIndex = entry.key),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: isSelected ? thirdColor : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(entry.value,
                    style: GoogleFonts.poppins(
                      color: isSelected ? Colors.white : Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage('https://via.placeholder.com/400x250'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: NetworkImage(
                  'https://images.pexels.com/photos/20545780/pexels-photo-20545780/free-photo-of-yellow-old-fashioned-car-on-road.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                ),
                fit: BoxFit.cover)
            // gradient: LinearGradient(
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            //   colors: [
            //     Colors.transparent,
            //     Colors.black.withOpacity(0.7),
            //   ],
            // ),
            ),
        // padding: EdgeInsets.all(16),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.7),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'KKR players flock Instagram as Phil Salt leaves the match.',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'India vs USA Live Score: United States just missed a big wicket as Saurabh Netravalkar dropped Suryakumar Yadav',
                    style: GoogleFonts.poppins(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.bookmark_border, color: Colors.white),
                      const SizedBox(width: 16),
                      Icon(Icons.share, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
