class Category {
  final String name;
  final String image;
  final List<QuizSet> quizSets;

  Category({required this.name, required this.image, required this.quizSets});
}

class QuizSet {
  final String name;
  final List<Question> questions;

  QuizSet({required this.name, required this.questions});
}

class Question {
  String question;
  List<String> options;
  int correctIndex; // ✅ Add this field for the correct answer
  int? selectedIndex; // ✅ Make selectedIndex nullable to handle unattempted questions

  Question(this.question, this.options, this.correctIndex, {this.selectedIndex});

  // ✅ Getter to retrieve the correct answer as a string
  String get correctAnswer => options[correctIndex];
}
