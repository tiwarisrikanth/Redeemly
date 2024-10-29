import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:redeemly/constants/colors.dart';
import 'package:redeemly/mainsection/explore/quiz/reviewscreen.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestion = 0;
  int correctAnswers = 0;
  int wrongAnswers = 0;
  // Track selected answers for each question
  Map<int, String> selectedAnswers = {};

  final List<Map<String, dynamic>> questions = [
    {
      'question': 'Which planet in the solar system is smallest?',
      'options': ['Pluto', 'Earth', 'Mercury', 'Mars'],
      'correctAnswer': 'Mercury',
    },
    {
      'question': 'What is the largest mammal on Earth?',
      'options': ['African Elephant', 'Blue Whale', 'Giraffe', 'Hippopotamus'],
      'correctAnswer': 'Blue Whale',
    },
    {
      'question': 'Which gas do plants absorb from the atmosphere?',
      'options': ['Oxygen', 'Nitrogen', 'Carbon Dioxide', 'Hydrogen'],
      'correctAnswer': 'Carbon Dioxide',
    },
    {
      'question': 'What is the chemical symbol for Gold?',
      'options': ['Ag', 'Fe', 'Au', 'Cu'],
      'correctAnswer': 'Au',
    },
  ];

  void checkAnswer(String selectedAnswer) {
    if (selectedAnswers.containsKey(currentQuestion))
      return; // Prevent changing answer

    final correctAnswer = questions[currentQuestion]['correctAnswer'];
    setState(() {
      selectedAnswers[currentQuestion] = selectedAnswer;
      if (selectedAnswer == correctAnswer) {
        correctAnswers++;
      } else {
        wrongAnswers++;
      }
    });
  }

  void goToPreviousQuestion() {
    if (currentQuestion > 0) {
      setState(() {
        currentQuestion--;
      });
    }
  }

  void goToNextQuestion() {
    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
      });
    }
  }

  Color getOptionColor(String option, int index) {
    if (!selectedAnswers.containsKey(currentQuestion)) return Colors.white;

    final correctAnswer = questions[currentQuestion]['correctAnswer'];
    final selectedAnswer = selectedAnswers[currentQuestion];

    if (option == selectedAnswer) {
      return option == correctAnswer
          ? Colors.green.shade100
          : Colors.red.shade100;
    } else if (option == correctAnswer && selectedAnswer != null) {
      return Colors.green.shade100;
    }
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: priamryColor,
        title: Text(
          "Quiz",
          style: GoogleFonts.poppins(
            fontSize: 17,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(90),
                border: Border.all(color: Colors.black26.withOpacity(0.1))),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 6.0, bottom: 6.0, right: 12.0, left: 12.0),
              child: Row(
                children: [
                  Gap(3),
                  Text("All",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: balck,
                      )),
                  Gap(10),
                  Icon(Icons.arrow_drop_down, color: Colors.black),
                  Gap(3),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(10),
              Container(
                height: 280,
                // padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 16),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: white),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: LinearProgressIndicator(
                                        value:
                                            correctAnswers / questions.length,
                                        backgroundColor: Colors.transparent,
                                        color: Colors.green,
                                        minHeight: 4,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text('$correctAnswers'),
                                    Spacer(),
                                    Text('$wrongAnswers'),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: LinearProgressIndicator(
                                        value: wrongAnswers / questions.length,
                                        backgroundColor: Colors.transparent,
                                        color: Colors.red,
                                        minHeight: 4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 24),
                              Text(
                                questions[currentQuestion]['question'],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
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
                                color: white,
                                borderRadius: BorderRadius.circular(60)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircularProgressIndicator(
                                value: (currentQuestion + 1) / questions.length,
                                backgroundColor: Colors.blue.withOpacity(0.2),
                                color: Colors.blue,
                                strokeWidth: 8,
                              ),
                            ),
                          ),
                          Text(
                            '${currentQuestion + 1}/${questions.length}',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              ...List.generate(
                4,
                (index) => Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: InkWell(
                    onTap: () => checkAnswer(
                      questions[currentQuestion]['options'][index],
                    ),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
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
                        color: getOptionColor(
                            questions[currentQuestion]['options'][index],
                            index),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: selectedAnswers[currentQuestion] ==
                                  questions[currentQuestion]['options'][index]
                              ? questions[currentQuestion]['correctAnswer'] ==
                                      questions[currentQuestion]['options']
                                          [index]
                                  ? Colors.green
                                  : Colors.red
                              : Colors.black38,
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Center(
                              child: Text(
                                String.fromCharCode(65 + index),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          Text(
                            questions[currentQuestion]['options'][index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          if (selectedAnswers.containsKey(currentQuestion) &&
                              questions[currentQuestion]['options'][index] ==
                                  questions[currentQuestion]['correctAnswer'])
                            Icon(Icons.check_circle, color: Colors.green)
                          else if (selectedAnswers
                                  .containsKey(currentQuestion) &&
                              selectedAnswers[currentQuestion] ==
                                  questions[currentQuestion]['options']
                                      [index] &&
                              selectedAnswers[currentQuestion] !=
                                  questions[currentQuestion]['correctAnswer'])
                            Icon(Icons.cancel, color: Colors.red),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: priamryColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: currentQuestion > 0 ? goToPreviousQuestion : null,
                icon: Icon(Icons.arrow_back_ios, size: 16),
                label: Text(
                  'Previous',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  currentQuestion < questions.length - 1
                      ? goToNextQuestion()
                      : showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const CelebrationDialog(
                              points: 100,
                              questionsAnswered: 100,
                            );
                          },
                        );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      currentQuestion < questions.length - 1
                          ? 'Next'
                          : "Finish",
                      style: TextStyle(fontSize: 16, color: white),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 16, color: white),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CelebrationDialog extends StatelessWidget {
  final int points;
  final int questionsAnswered;

  const CelebrationDialog({
    Key? key,
    required this.points,
    required this.questionsAnswered,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFEB3B), // Yellow at top
              Color(0xFFFF9800), // Orange at bottom
            ],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Brain Logo
            Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color(0xFFFF9800),
                    width: 4,
                  ),
                ),
                child: Image.asset(
                  'assets/images/quiz.png',
                  height: 60,
                  width: 60,
                )),
            const SizedBox(height: 24),
            // Points Text
            Text(
              "You've earned ${points} points",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            // Congratulations Text
            Text(
                "Congratulations you answered ${questionsAnswered} questions correctly in quiz.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black87,
                )),
            const SizedBox(height: 24),
            // Share Button
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: thirdColor),
                  borderRadius: BorderRadius.circular(10)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: white,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: QuizReviewScreen(),
                          type: PageTransitionType.fade));
                  // Add your share functionality here
                },
                child: Text(
                  "Share with friends",
                  style: GoogleFonts.poppins(fontSize: 16, color: thirdColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Example usage:
void showAchievementDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const CelebrationDialog(
        points: 100,
        questionsAnswered: 100,
      );
    },
  );
}
