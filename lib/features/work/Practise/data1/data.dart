import '../model/model.dart';

class Data {
  static List<Category> categories = [
    Category(
      name: 'Technical',
      image: 'assets/quiz/Tech.png',
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
          name: 'ReactNative',
          questions: [
            Question(
              'Which lifecycle method is invoked just before a component is unmounted and destroyed in React Native?',
              [
              'componentWillUnmount',
              'componentDidUnmount',
              'componentWillUpdate',
              'componentDidUpdate'
              ],
              0,
            ),
            Question(
              'What is the correct way to optimize performance in a large list of React Native components?',
              [
              'Use shouldComponentUpdate',
              'Use VirtualizedList or FlatList',
              'Use componentDidUpdate',
              'Use componentWillMount'
              ],
              1,
            ),
            Question(
              'How can you improve the performance of your React Native application?',
              [
              'By using PureComponent',
              'By avoiding inline functions',
              'By using FlatList for long lists',
              'All of the above'
              ],
              3,
            ),
            Question(
            'What is the purpose of the key attribute when rendering a list of components in React Native?',
            [
            'To uniquely identify each element in the list',
            'To specify the order of elements',
            'To apply styles to the list',
            'To bind events to the list'
            ],
            0,
            ),
            Question(
            'Which command is used to install the React Native CLI globally?',
            [
            'npm install -g react-native-cli',
            'npm install react-native',
            'npm install -g create-react-native-app',
            'npx create-react-native-app'
            ],
            0,
            ),
            Question(
            'What is the primary difference between React Native and React for web?',
            [
            'React Native uses native components instead of web components',
            'React Native can only be used for mobile apps',
            'React Native uses HTML for rendering',
            'React Native does not support state management'
            ],
            0,
            ),
            Question(
            'What is the purpose of the useReducer hook in React Native?',
            [
            'To manage state in a component',
            'To create side effects',
            'To use lifecycle methods',
            'To perform routing'
            ],
            0,
            ),
            Question(
            'Which of the following is a valid way to pass data from a parent component to a child component in React Native?',
            [
            'Using props',
            'Using state',
            'Using context',
            'Using refs'
            ],
            0,
            ),
            Question(
            'What is the role of the Context API in React Native?',
            [
            'To manage global state',
            'To create side effects',
            'To perform network requests',
            'To handle user input'
            ],
            0,
            ),
            Question(
            'What does the StyleSheet.create method do in React Native?',
            [
            'Creates a new stylesheet object',
            'Applies styles to a component',
            'Overrides default styles',
            'Creates a CSS file'
            ],
            0,
            ),
        ],
        ),
      ],
        ),
    Category(
      name: 'Behavioural',
      image: 'assets/quiz/Behavioral.png',
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
      image: 'assets/quiz/Sit.png',
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
      image: 'assets/quiz/aptitude.png',
      quizSets: [
        QuizSet(
          name: 'Quiz Set 1',
          questions: [
            Question(
              'A train 100 meters long is running at a speed of 60 km/h. How long will it take to pass a pole?',
              ['5 seconds', '6 seconds', '10 seconds', '12 seconds'],
              1,
            ),
            Question(
              'What is the compound interest on Rs1500 at a rate of 5% per annum for 2 years, compounded annually?',
              ['Rs153.75', 'Rs157.50', 'Rs150', 'Rs160'],
              1,
            ),
            Question(
              'Two pipes can fill a tank in 10 hours and 15 hours respectively. If both the pipes are opened simultaneously, how much time will it take to fill the tank?',
              ['6 hours', '7 hours', '8 hours', '9 hours'],
              2,
            ),
            Question(
              'A car travels 140 km in 3.5 hours. What is its average speed?',
              ['35 km/h', '40 km/h', '45 km/h', '50 km/h'],
              1,
            ),
            Question(
              'If the sides of a triangle are 5 cm, 12 cm, and 13 cm, what is its area?',
              ['30 sq cm', '60 sq cm', '90 sq cm', '120 sq cm'],
              1,
            ),
            Question(
              'The average age of 30 students in a class is 15 years. If the age of the teacher is added, the average age increases to 16 years. What is the age of the teacher?',
              ['36 years', '40 years', '45 years', '50 years'],
              2,
            ),
            Question(
              'If the ratio of the ages of two persons is 4:5 and the sum of their ages is 45 years, what are their ages?',
              ['18 and 27', '20 and 25', '22 and 23', '24 and 21'],
              0,
            ),
            Question(
              'In how many ways can the letters of the word "LEADER" be arranged?',
              ['720', '360', '240', '120'],
              1,
            ),
            Question(
              'What is the next term in the sequence: 2, 6, 12, 20, ...?',
              ['28', '30', '32', '34'],
              0,
            ),
            Question(
              'If the perimeter of a rectangle is 60 cm and its length is twice its width, what is the area of the rectangle?',
              ['100 sq cm', '150 sq cm', '200 sq cm', '250 sq cm'],
              2,
            ),
          ],
        ),
        QuizSet(
          name: 'Quiz Set 2',
          questions: [
            Question(
              'If the selling price of 20 articles is equal to the cost price of 25 articles, what is the profit percentage?',
              ['20%', '25%', '30%', '33.33%'],
              3,
            ),
            Question(
              'A man can row 5 km/hr in still water. If the river is running at 2 km/hr, it takes him 1 hour to row to a place and back. How far is the place?',
              ['2 km', '2.4 km', '3 km', '3.6 km'],
              1,
            ),
            Question(
              'If the difference between the compound interest and simple interest on a sum of money for 2 years at 10% per annum is Rs16, what is the sum?',
              ['Rs1000', 'Rs1200', 'Rs1500', 'Rs2000'],
              3,
            ),
            Question(
              'A number is decreased by 10% and then increased by 10%. What is the net change?',
              ['0%', '1% decrease', '1% increase', '2% decrease'],
              1,
            ),
            Question(
              'If 3 men or 6 women can do a piece of work in 12 days, how long will it take for 6 men and 6 women to do the same work?',
              ['4 days', '5 days', '6 days', '7 days'],
              0,
            ),
            Question(
              'What is the least number which when divided by 35, 45, and 55 leaves the remainder 18, 28, and 38 respectively?',
              ['318', '418', '518', '618'],
              2,
            ),
            Question(
              'A person travels equal distances with speeds of 3 km/hr, 4 km/hr, and 5 km/hr and takes a total time of 47 minutes. What is the total distance?',
              ['1 km', '2 km', '3 km', '4 km'],
              0,
            ),
            Question(
              'In what ratio must water be mixed with milk to gain 20% by selling the mixture at the cost price?',
              ['1:4', '1:5', '1:6', '1:7'],
              1,
            ),
            Question(
              'A cistern is normally filled in 8 hours but takes 2 hours longer to fill because of a leak in its bottom. If the cistern is full, the leak will empty it in how many hours?',
              ['20 hours', '25 hours', '30 hours', '35 hours'],
              2,
            ),
            Question(
              'A sum of money becomes double in 5 years at simple interest. What is the rate of interest?',
              ['10%', '15%', '20%', '25%'],
              2,
            ),
          ],
        ),
      ],
    ),
  ];
}
