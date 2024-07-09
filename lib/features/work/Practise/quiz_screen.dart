import 'package:flutter/material.dart';
import './model/model.dart';
import 'homeScreen.dart';
import 'resultScreen.dart';


class QuizScreen extends StatefulWidget {
  final QuizSet quizSet;

  const QuizScreen({super.key, required this.quizSet});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  List<int?> selectedAnswers = [];
  List<Question> shuffledQuestions = [];

  @override
  void initState() {
    super.initState();
    shuffledQuestions = List<Question>.from(widget.quizSet.questions);
    shuffledQuestions.shuffle();
    selectedAnswers = List<int?>.filled(shuffledQuestions.length, null);
  }

  void goToNextQuestion() {
    if ((currentQuestionIndex < shuffledQuestions.length - 1) )  {
      setState(() {
        currentQuestionIndex++;

      });
    }
  }

  void goToPreviousQuestion() {
    if (currentQuestionIndex > 0) {
      setState(() {
        currentQuestionIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Question currentQuestion = shuffledQuestions[currentQuestionIndex];
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue,
              Colors.blue,
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
                    SizedBox(width: 10),
                    Text(
                      widget.quizSet.name,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.8,
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currentQuestion.question,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color:Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    ...currentQuestion.options.asMap().entries.map((entry) {
                      final index = entry.key;
                      final option = entry.value;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedAnswers[currentQuestionIndex] = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                          margin: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: selectedAnswers[currentQuestionIndex] == index
                                ? Colors.blue
                                : Colors.white,
                            border: Border.all(
                              width: 2,
                              color: selectedAnswers[currentQuestionIndex] == index
                                  ? Colors.blue
                                  : Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              option,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: selectedAnswers[currentQuestionIndex] == index
                                    ? Colors.black
                                    : Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    currentQuestionIndex > 0
                        ? ElevatedButton(
                      onPressed: goToPreviousQuestion,
                      child: Text(
                        "Back",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    )
                        : SizedBox(),
                    ElevatedButton(
                      onPressed: () {
                        if ((currentQuestionIndex < shuffledQuestions.length - 1)) {
                          goToNextQuestion();
                        } else {
                          int totalCorrect = 0;
                          for (int i = 0; i < shuffledQuestions.length; i++) {
                            if (selectedAnswers[i] == shuffledQuestions[i].selectedIndex) {
                              totalCorrect++;
                            }
                          }
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultScreen(
                                totalQuestions: shuffledQuestions.length,
                                totalAttempts: shuffledQuestions.length,
                                totalCorrect: totalCorrect,
                                totalScore: totalCorrect * 10,
                                quizSet: widget.quizSet,
                              ),
                            ),
                          );
                        }
                      },
                      child: Text(
                        currentQuestionIndex == shuffledQuestions.length - 1 ? "Submit" : "Next",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
