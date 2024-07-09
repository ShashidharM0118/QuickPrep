import '../model/model.dart';

class Data {
  static List<Category> categories = [
    Category(
      name: 'Technical',
      image: 'assets/quiz/Flutter.png',
      quizSets: [
        QuizSet(
          name: 'Flutter',
          questions: [
            Question(
              'What is Flutter?',
              [
                'A UI framework',
                'A programming language',
                'An operating system',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What language is Flutter written in?',
              ['Dart', 'Java', 'Kotlin', 'C++'],
              0,
            ),
            Question(
              'What is hot reload in Flutter?',
              [
                'A feature for quickly seeing changes in code',
                'A widget',
                'A plugin',
                'None of the above'
              ],
              0,
            ),
            Question(
              'Which widget is used to display images in Flutter?',
              ['Image', 'ImageView', 'ImageBox', 'ImageDisplay'],
              0,
            ),
            Question(
              'What is the purpose of MaterialApp widget in Flutter?',
              [
                'To create a Material Design app',
                'To define app theme',
                'To handle app routing',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is a StatefulWidget in Flutter?',
              [
                'A widget with mutable state',
                'A static widget',
                'A stateless widget',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the purpose of setState() method in Flutter?',
              [
                'To update the state of a StatefulWidget',
                'To build the UI',
                'To navigate to another screen',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the purpose of Scaffold widget in Flutter?',
              [
                'To implement basic material design layout structure',
                'To handle user input',
                'To display images',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the main function in Flutter?',
              [
                'Entry point of the app',
                'To define app theme',
                'To define app routing',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the purpose of pubspec.yaml file in Flutter project?',
              [
                'To define project dependencies',
                'To define UI layout',
                'To define app theme',
                'None of the above'
              ],
              0,
            ),
          ],
        ),
        QuizSet(
          name: 'Quiz Set 2',
          questions: [
            Question(
              'What is a widget in Flutter?',
              [
                'A building block of the user interface',
                'A programming language',
                'A UI framework',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the purpose of StatelessWidget in Flutter?',
              [
                'To represent immutable UI',
                'To handle user input',
                'To manage app state',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the difference between hot reload and hot restart in Flutter?',
              [
                'Hot reload updates the UI without restarting the app',
                'Hot restart restarts the app',
                'They are the same',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the purpose of the Material class in Flutter?',
              [
                'To implement Material Design',
                'To define app theme',
                'To manage app routing',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the purpose of Cupertino widgets in Flutter?',
              [
                'To implement iOS-style UI',
                'To handle user input',
                'To display images',
                'None of the above'
              ],
              0,
            ),
          ],
        ),
      ],
    ),
    Category(
      name: 'Behavioural',
      image: 'assets/quiz/React Native.png',
      quizSets: [
        QuizSet(
          name: 'Quiz Set 1',
          questions: [
            Question(
              'How do you handle stress?',
              [
                'Exercise',
                'Meditation',
                'Talking to friends',
                'All of the above'
              ],
              3,
            ),
            Question(
              'How do you handle conflict in the workplace?',
              [
                'Avoid it',
                'Confront it',
                'Seek to understand both sides',
                'Ignore it'
              ],
              2,
            ),
            Question(
              'What is emotional intelligence?',
              [
                'The ability to understand and manage your emotions',
                'A form of intellectual ability',
                'A type of artificial intelligence',
                'None of the above'
              ],
              0,
            ),
            Question(
              'How do you stay motivated?',
              [
                'Setting goals',
                'Positive reinforcement',
                'Taking breaks',
                'All of the above'
              ],
              3,
            ),
            Question(
              'What is active listening?',
              [
                'Listening to understand',
                'Interrupting frequently',
                'Listening to respond',
                'None of the above'
              ],
              0,
            ),
          ],
        ),
        QuizSet(
          name: 'Quiz Set 2',
          questions: [
            Question(
              'What is the best way to give constructive feedback?',
              [
                'Focus on the person',
                'Focus on the behavior',
                'Use general statements',
                'Ignore the issue'
              ],
              1,
            ),
            Question(
              'How do you handle difficult conversations?',
              [
                'Prepare in advance',
                'Avoid the conversation',
                'Dominate the conversation',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is empathy?',
              [
                'Feeling sorry for someone',
                'Understanding and sharing the feelings of another',
                'Ignoring others\' feelings',
                'None of the above'
              ],
              1,
            ),
            Question(
              'How do you build trust in a team?',
              [
                'Communicate openly',
                'Keep promises',
                'Show respect',
                'All of the above'
              ],
              3,
            ),
            Question(
              'What is the importance of adaptability?',
              [
                'It allows you to handle change effectively',
                'It shows weakness',
                'It is not important',
                'None of the above'
              ],
              0,
            ),
          ],
        ),
      ],
    ),
    Category(
      name: 'Situational',
      image: 'assets/quiz/Python.png',
      quizSets: [
        QuizSet(
          name: 'Quiz Set 1',
          questions: [
            Question(
              'You are given a tight deadline. How do you handle it?',
              [
                'Prioritize tasks',
                'Delegate tasks',
                'Work overtime',
                'All of the above'
              ],
              3,
            ),
            Question(
              'Your team member is not contributing. What do you do?',
              [
                'Talk to them privately',
                'Ignore the issue',
                'Report to manager',
                'Do their work for them'
              ],
              0,
            ),
            Question(
              'You made a mistake in your project. How do you handle it?',
              [
                'Own up to it',
                'Blame someone else',
                'Ignore it',
                'None of the above'
              ],
              0,
            ),
            Question(
              'Your client is unhappy with the deliverable. What do you do?',
              [
                'Listen to their concerns',
                'Apologize',
                'Work on improvements',
                'All of the above'
              ],
              3,
            ),
            Question(
              'You are asked to learn a new skill quickly. How do you handle it?',
              [
                'Take a course',
                'Practice regularly',
                'Ask for help',
                'All of the above'
              ],
              3,
            ),
          ],
        ),
        QuizSet(
          name: 'Quiz Set 2',
          questions: [
            Question(
              'You are given an unclear task. What do you do?',
              [
                'Seek clarification',
                'Guess and proceed',
                'Avoid the task',
                'None of the above'
              ],
              0,
            ),
            Question(
              'A team member disagrees with you. How do you handle it?',
              [
                'Listen to their perspective',
                'Ignore their opinion',
                'Argue with them',
                'None of the above'
              ],
              0,
            ),
            Question(
              'You have too many tasks to handle. What do you do?',
              [
                'Prioritize tasks',
                'Ask for help',
                'Delegate tasks',
                'All of the above'
              ],
              3,
            ),
            Question(
              'You need to deliver a project with limited resources. How do you handle it?',
              [
                'Optimize resource usage',
                'Seek additional resources',
                'Adjust project scope',
                'All of the above'
              ],
              3,
            ),
            Question(
              'You are not sure about the project requirements. What do you do?',
              [
                'Seek clarification',
                'Proceed with assumptions',
                'Avoid the task',
                'None of the above'
              ],
              0,
            ),
          ],
        ),
      ],
    ),
    Category(
      name: 'Aptitude',
      image: 'assets/quiz/C#.png',
      quizSets: [
        QuizSet(
          name: 'Quiz Set 1',
          questions: [
            Question(
              'What is the next number in the sequence: 2, 4, 8, 16, ...?',
              ['32', '64', '128', '256'],
              0,
            ),
            Question(
              'If the sum of two numbers is 12 and their product is 32, what are the numbers?',
              ['4 and 8', '2 and 6', '3 and 9', '1 and 11'],
              0,
            ),
            Question(
              'A train travels 60 km in 1 hour. How long will it take to travel 300 km?',
              ['4 hours', '5 hours', '6 hours', '7 hours'],
              1,
            ),
            Question(
              'What is the square root of 144?',
              ['10', '11', '12', '13'],
              2,
            ),
            Question(
              'If a car travels at 60 km/h, how far will it travel in 3 hours?',
              ['120 km', '150 km', '180 km', '200 km'],
              2,
            ),
          ],
        ),
        QuizSet(
          name: 'Quiz Set 2',
          questions: [
            Question(
              'If 3x + 2 = 11, what is the value of x?',
              ['2', '3', '4', '5'],
              1,
            ),
            Question(
              'What is the value of π (pi) to two decimal places?',
              ['3.12', '3.14', '3.16', '3.18'],
              1,
            ),
            Question(
              'What is 15% of 200?',
              ['25', '30', '35', '40'],
              1,
            ),
            Question(
              'What is the perimeter of a rectangle with length 10 cm and width 5 cm?',
              ['20 cm', '25 cm', '30 cm', '35 cm'],
              2,
            ),
            Question(
              'If 5x = 20, what is the value of x?',
              ['2', '3', '4', '5'],
              2,
            ),
          ],
        ),
      ],
    ),
  ];
}
