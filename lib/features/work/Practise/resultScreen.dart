import 'package:flutter/material.dart';
import './model/model.dart';
import 'homeScreen.dart';
import 'quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  final int totalQuestions;
  final int totalAttempts;
  final int totalCorrect;
  final int totalScore;
  final QuizSet quizSet;

  const ResultScreen({
    super.key,
    required this.totalQuestions,
    required this.totalAttempts,
    required this.totalCorrect,
    required this.quizSet,
    required this.totalScore,
  });

  @override
  Widget build(BuildContext context) {
    String feedback = totalScore < 30
        ? "Failed!"
        : totalScore < 60
        ? "Good"
        : totalScore < 80
        ? "Great"
        : "Awesome";
    return Scaffold(
        body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
    Colors.indigo,
    Colors.purple,
    ],
    ),
    ),
    child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(height: 20),
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 15),
    child: Row(
    children: [
    InkWell(
    onTap: () {
    Navigator.pop(context);
    },
    child: Icon(
    Icons.arrow_back_ios,
    color: Colors.white,
    size: 30,
    ),
    ),
    Text(
    "Result",
    style: TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    ),
    ),
    ],
    ),
    ),
    SizedBox(height: 100),
    Center(
    child: Container(
    width: MediaQuery.of(context).size.width / 1.3,
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
    children: [
    Text(
    feedback,

    style: TextStyle(
      color: Colors.black,
    fontWeight: FontWeight.w600,
    fontSize: 25,

    ),
    ),
    SizedBox(height: 20),
    Text(
    "Score",
    style: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    ),
    ),
    SizedBox(height: 10),
    Text(

    "${totalScore}/${totalQuestions * 10}",
    style: TextStyle(
      color: Colors.black,
    fontSize: 25,
    fontWeight: FontWeight.w500,

    ),
    ),
    SizedBox(height: 50),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    InkWell(
    onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => QuizScreen(quizSet: quizSet),
    ),
    );
    },
    child: Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
    Colors.indigo,
    Colors.purple,
    ],
    ),
    ),
    child: Text(
    "Repeat",
    style: TextStyle(
    color: Colors.black,
      fontSize: 18,
    ),
    ),
    ),
    ),
      InkWell(
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomeQuizScreen(),
            ),
                (route) => false,
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.indigo,
                Colors.purple,
              ],
            ),
          ),
          child: Text(
            "Home",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ),
    ],
    ),
      SizedBox(height: 20),
    ],
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
