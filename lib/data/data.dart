import 'package:app_dev_final_project/model/model.dart';

class Data {
  static List<Category> categories = [
    Category(
      name: 'Flutter',
      image: 'assets/Flutter.png',
      quizSets: [
        QuizSet(
          name: 'Quiz Set 1',
          questions: [
            Question(
              'What language is Flutter written in?',
              ['Java', 'Dart', 'Kotlin', 'C++'],
              1,
            ),
            Question(
              'Which widget is used to display images in Flutter?',
              ['ImageView', 'Image', 'ImageBox', 'ImageDisplay'],
              1,
            ),
            Question(
              'What is the purpose of the setState() method in Flutter?',
              [
                'To build the UI',
                'To navigate to another screen',
                'To update the state of a StatefulWidget',
                'None of the above'
              ],
              2,
            ),
            Question(
              'What is the purpose of pubspec.yaml in a Flutter project?',
              [
                'To define UI layout',
                'To define project dependencies',
                'To define app theme',
                'None of the above'
              ],
              1,
            ),
            Question(
              'What does hot reload do in Flutter?',
              [
                'Rebuilds the UI instantly',
                'Restarts the app',
                'Clears cache',
                'None of the above'
              ],
              0,
            ),
            Question(
              'What is the entry point of a Flutter app?',
              ['runApp()', 'main()', 'build()', 'start()'],
              1,
            ),
            Question(
              'Which widget is used for user input in Flutter?',
              ['TextFormField', 'TextBox', 'InputField', 'TextInput'],
              0,
            ),
            Question(
              'What is Flutter primarily used for?',
              [
                'Backend development',
                'Mobile app development',
                'Game development',
                'Machine learning'
              ],
              1,
            ),
            Question(
              'Which company developed Flutter?',
              ['Facebook', 'Google', 'Microsoft', 'Apple'],
              1,
            ),
            Question(
              'Which command is used to create a new Flutter project?',
              [
                'flutter build',
                'flutter create',
                'flutter start',
                'flutter new'
              ],
              1,
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
                0),
            Question(
                'What is the purpose of StatelessWidget in Flutter?',
                [
                  'To represent immutable UI',
                  'To handle user input',
                  'To manage app state',
                  'None of the above'
                ],
                0),
            Question(
                'What is the difference between hot reload and hot restart in Flutter?',
                [
                  'Hot reload updates the UI without restarting the app',
                  'Hot restart restarts the app',
                  'They are the same',
                  'None of the above'
                ],
                0),
            Question(
                'What is the purpose of Cupertino widgets in Flutter?',
                [
                  'To implement iOS-style UI',
                  'To handle user input',
                  'To display images',
                  'None of the above'
                ],
                0),
            Question('Which package manager is used in Flutter?',
                ['npm', 'pub', 'pip', 'yarn'], 1),
            Question('What is the default database for Flutter?',
                ['SQLite', 'Firebase Firestore', 'MongoDB', 'MySQL'], 1),
            Question(
                'Which command is used to create a new Flutter project?',
                [
                  'flutter create project_name',
                  'flutter new project_name',
                  'flutter init project_name',
                  'flutter start project_name'
                ],
                0),
            Question(
                'What does the "BuildContext" represent in Flutter?',
                [
                  'A handle to the location of a widget in the widget tree',
                  'A function',
                  'A widget property',
                  'None of the above'
                ],
                0),
          ],
        ),
      ],
    ),
    Category(
      name: 'SQL',
      image: 'assets/MySQL_logo.png',
      quizSets: [
        QuizSet(
          name: 'Quiz Set 1',
          questions: [
            Question(
              'Which SQL command is used to retrieve data from a database?',
              ['UPDATE', 'SELECT', 'INSERT', 'DELETE'],
              1,
            ),
            Question(
              'What does the acronym SQL stand for?',
              [
                'Structured Query Language',
                'Sequential Query Logic',
                'Structured Question List',
                'Standard Query Language'
              ],
              0,
            ),
          ],
        ),
      ],
    ),
    Category(
      name: 'Python',
      image: 'assets/Python.png',
      quizSets: [
        QuizSet(
          name: 'Quiz Set 1',
          questions: [
            Question(
                'Who created Python?',
                [
                  'Guido van Rossum',
                  'James Gosling',
                  'Brendan Eich',
                  'Dennis Ritchie'
                ],
                0),
          ],
        ),
      ],
    ),
    Category(
      name: 'HTML',
      image: 'assets/HTML5_logo.png',
      quizSets: [
        QuizSet(
          name: 'Quiz Set 1',
          questions: [
            Question(
                'What does HTML stand for?',
                [
                  'Hyper Text Markup Language',
                  'Hyper Transfer Markup Language',
                  'High Text Machine Language',
                  'None of the above'
                ],
                0),
          ],
        ),
      ],
    ),
    Category(
      name: 'Java',
      image: 'assets/Java_logo.png',
      quizSets: [
        QuizSet(
          name: 'Quiz Set 1',
          questions: [
            Question('Who invented Java?', 
            ['James Gosling', 'Bjarne Stroustrup', 'Guido van Rossum', 'Dennis Ritchie'],
             0),
            Question('Which keyword is used to define a class in Java?', ['class', 'struct', 'object', 'define'], 0),
            Question('Which data type is used to store decimal numbers in Java?', ['int', 'float', 'boolean', 'char'], 1),
            Question('Which of the following is not a Java access modifier?', ['public', 'protected', 'private', 'extern'], 3),
          ],
        ),
      ],
    ),
    Category(
      name: 'C++',
      image: 'assets/C++_logo.png',
      quizSets: [
        QuizSet(
          name: 'Quiz Set 1',
          questions: [
            Question('Who developed C++?', ['James Gosling', 'Bjarne Stroustrup', 'Dennis Ritchie', 'Guido van Rossum'], 1),
            Question('Which operator is used for dynamic memory allocation in C++?', ['malloc', 'calloc', 'new', 'alloc'], 2),
            Question('Which of the following is used to define a class in C++?', ['class', 'struct', 'object', 'define'], 0),
            Question('Which header file is required for input/output operations in C++?', ['stdio.h', 'iostream', 'stdlib.h', 'string.h'], 1),
          ],
        ),
      ],
    ),
  ];
}
