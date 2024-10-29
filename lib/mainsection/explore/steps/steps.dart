import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pedometer/pedometer.dart';
import 'package:redeemly/constants/colors.dart';

class StepCounterScreen extends StatefulWidget {
  @override
  _StepCounterScreenState createState() => _StepCounterScreenState();
}

class _StepCounterScreenState extends State<StepCounterScreen> {
  int _steps = 0;
  final int _dailyGoal = 1000;
  double _distance = 0.0; // Distance in kilometers
  late Stream<StepCount> _stepCountStream;
  DateTime? _startTime;
  late Timer _timer;
  String _timeSpent = "0:00:00";

  static const double _stepLength = 0.000762; // Average step length in km

  @override
  void initState() {
    super.initState();
    _initializePedometer();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _initializePedometer() {
    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(_onStepCount).onError(_onStepCountError);
    _startTime = DateTime.now();
  }

  void _onStepCount(StepCount event) {
    setState(() {
      _steps = event.steps;
      _distance = _steps * _stepLength; // Calculate distance in km
    });
  }

  void _onStepCountError(error) {
    print("Pedometer Error: $error");
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {
        final duration = DateTime.now().difference(_startTime!);
        _timeSpent = _formatDuration(duration);
      });
    });
  }

  String _formatDuration(Duration duration) {
    final hours = duration.inHours.toString().padLeft(2, '0');
    final minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return "$hours:$minutes:$seconds";
  }

  double get _progress => (_steps / _dailyGoal).clamp(0.0, 1.0);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                child: CircularProgressIndicator(
                  value: _progress,
                  strokeWidth: 12,
                  valueColor: AlwaysStoppedAnimation<Color>(thirdColor),
                  backgroundColor: thirdColor.withOpacity(0.1),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Steps",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Gap(10),
                  Text('$_steps',
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: balck,
                      )),
                  Gap(10),
                  Icon(
                    LineIcons.shoePrints,
                    size: 29,
                    color: thirdColor,
                  )
                  // Text(
                  //   '/$_dailyGoal steps',
                  //   style: TextStyle(fontSize: 16, color: thirdColor[700]),
                  // ),
                ],
              ),
            ],
          ),
          Gap(25),
          Row(
            children: [
              Gap(10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black12.withOpacity(0.1),
                      )),
                  child: Column(
                    children: [
                      Gap(10),
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.black12,
                      ),
                      Gap(10),
                      Text(
                        '1hr 10 min',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Gap(10),
                      Text(
                        'Time',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ),
                      Gap(10),
                    ],
                  ),
                ),
              ),
              Gap(10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black12.withOpacity(0.1),
                      )),
                  child: Column(
                    children: [
                      Gap(10),
                      Icon(
                        Icons.watch_later_outlined,
                        color: Colors.black12,
                      ),
                      Gap(10),
                      Text(
                        "${_distance.toStringAsFixed(2)} KM",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Gap(10),
                      Text(
                        'Distance',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ),
                      Gap(10),
                    ],
                  ),
                ),
              ),
              Gap(10),
            ],
          ),
          // Text(
          //   'Time Spent: $_timeSpent',
          //   style: TextStyle(fontSize: 16, color: thirdColor),
          // ),
          // Gap(10),
          // Text(
          //   'Distance Traveled:  km',
          //   style: TextStyle(fontSize: 16, color: thirdColor),
          // ),
        ],
      ),
    );
  }
}
