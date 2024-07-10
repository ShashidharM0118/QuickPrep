import 'package:flutter/material.dart';
import 'faq.dart';
import 'faq_item.dart';

class MIPage extends StatelessWidget {
  final List<FAQ> faqs = [
    FAQ(
      question: 'Average Duration',
      answer: 'The average job interview lasts about 40 minutes',
    ),
    FAQ(
      question: 'Interview Rounds',
      answer: 'On average, candidates go through 2-3 rounds of interviews before receiving a job offer',
    ),
    FAQ(
      question: 'Common First Question',
      answer: '"Tell me about yourself" is the most commonly asked interview question, appearing in 60% of job interviews"',
    ),
    FAQ(
      question: 'Interview Success Rate',
      answer: "Only about 20% of candidates who apply for a job are invited for an interview, and out of those, only 1 in 6 candidates get the job",
    ),
    FAQ(
      question: 'Resume Screening',
      answer: "Recruiters spend an average of 6 seconds reviewing a resume before deciding if a candidate should be considered for an interview",
    ),
    FAQ(
      question: 'Video Interviews',
      answer: "Since the COVID-19 pandemic, the use of video interviews has increased dramatically, with over 86% of companies now using them as part of their hiring process",
    ),
    FAQ(
      question: 'Common Mistakes',
      answer: "The most common interview mistake is not knowing enough about the company, with 47% of interviewers citing it as a reason for rejecting a candidate",
    ),
    FAQ(
      question: 'Follow-Up',
      answer: "Only 24% of job seekers send a thank-you note after an interview, despite it being a recommended practice",
    ),
    FAQ(
      question: 'Job Offers',
      answer: "About 42% of job offers are extended within two weeks of the initial interview",
    ),
    FAQ(
      question: 'Social Media Screening',
      answer: "Around 70% of employers check a candidate's social media profiles during the hiring process, and 54% have found content that caused them not to hire a candidate",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interview Tips'),
      ),
      body: Container(
        color: Colors.blue.shade100,
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: faqs.length,
          itemBuilder: (context, index) {
            return MIItem(faq: faqs[index]);
          },
        ),
      ),
    );
  }
}
