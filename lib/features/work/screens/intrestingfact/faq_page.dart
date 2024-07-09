import 'package:flutter/material.dart';
import 'faq.dart';
import 'faq_item.dart';

class MIPage extends StatelessWidget {
  final List<FAQ> faqs = [
    FAQ(
      question: 'What do you know about our company?',
      answer: 'I have researched your companys history, products/services, recent news, and company culture. I am particularly impressed by [mention specific aspects].',
    ),
    FAQ(
      question: 'Can you tell me about yourself?',
      answer: 'I have [mention experience or background]. I am passionate about [mention relevant skills or interests].',
    ),
    FAQ(
      question: 'How do you usually dress for work?',
      answer: "I believe in dressing professionally. For this interview, I've chosen [describe your attire].",
    ),
    FAQ(
      question: 'How do you manage your time?',
      answer: "I prioritize punctuality and plan to arrive early to ensure I'm prepared and relaxed before the interview.",
    ),
    FAQ(
      question: 'Do you have any questions for us?',
      answer: "Yes, I'm interested in [ask about company culture, team dynamics, growth opportunities].",
    ),
    FAQ(
      question: 'Why do you want to work here?',
      answer: "I'm excited about [mention specific reasons, such as company mission, products, or industry reputation].",
    ),
    FAQ(
      question: 'Tell me about a time when you solved a problem at work.',
      answer: "In my previous role at [company], I [describe the situation, action taken, and result achieved].",
    ),
    FAQ(
      question: 'How do you ensure you understand instructions?',
      answer: "I actively listen, ask clarifying questions if needed, and summarize to ensure I understand correctly.",
    ),
    FAQ(
      question: 'How do you handle stressful situations?',
      answer: "I maintain composure by [mention techniques like deep breathing, prioritizing tasks, or seeking support].",
    ),
    FAQ(
      question: 'How do you follow up after an interview?',
      answer: "I plan to send a thank-you email expressing my appreciation for the opportunity and reiterating my interest.",
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
