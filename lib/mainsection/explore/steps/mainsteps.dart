import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redeemly/constants/colors.dart';
import 'package:redeemly/mainsection/explore/steps/steps.dart';

class Mainsteps extends StatefulWidget {
  const Mainsteps({super.key});

  @override
  State<Mainsteps> createState() => _MainstepsState();
}

class _MainstepsState extends State<Mainsteps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: priamryColor,
        title: Text(
          "Steps Tracker",
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        color: white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(20),
              StepCounterScreen(),
              Gap(10),
              CustomGraphScreen()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomGraphScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Dropdown Menu
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text("Your Progress",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: balck,
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        border:
                            Border.all(color: Colors.black26.withOpacity(0.1))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("This Week",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: balck,
                              )),
                          Icon(Icons.arrow_drop_down, color: Colors.black),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            // Line Chart
            AspectRatio(
              aspectRatio: 1.1,
              child: LineChart(
                LineChartData(
                  minX: 0,
                  maxX: 7,
                  minY: 0,
                  maxY: 10,
                  gridData: FlGridData(
                    show: true,
                    drawHorizontalLine: true,
                    drawVerticalLine: true,
                    getDrawingHorizontalLine: (value) => FlLine(
                        color: thirdColor.withOpacity(0.2), strokeWidth: 1),
                    getDrawingVerticalLine: (value) => FlLine(
                        color: thirdColor.withOpacity(0.2), strokeWidth: 1),
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 3),
                        FlSpot(1, 4),
                        FlSpot(2, 5),
                        FlSpot(3, 8),
                        FlSpot(4, 6),
                        FlSpot(5, 7),
                        FlSpot(6, 5),
                        FlSpot(7, 8),
                      ],
                      isCurved: true,
                      color: thirdColor,
                      // bac: [thirdColor],
                      belowBarData: BarAreaData(
                        show: true,
                        color: thirdColor.withOpacity(0.2),
                      ),
                      dotData: FlDotData(
                        show: true,
                        getDotPainter: (spot, percent, barData, index) {
                          return FlDotCirclePainter(
                            radius: 4,
                            color: Colors.white,
                            strokeWidth: 2,
                            strokeColor: thirdColor,
                          );
                        },
                      ),
                      barWidth: 4,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
