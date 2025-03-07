import 'package:app_dev_final_project/model/model.dart';
import 'package:flutter/material.dart';

class AnswerReviewScreen extends StatelessWidget {
  final QuizSet quizSet;
  final List<int?> selectedAnswers;

  const AnswerReviewScreen({
    super.key,
    required this.quizSet,
    required this.selectedAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Correct Answers")),
      body: ListView.builder(
        itemCount: quizSet.questions.length,
        itemBuilder: (context, index) {
          Question question = quizSet.questions[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(question.question),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: question.options.asMap().entries.map((entry) {
                  int idx = entry.key;
                  String option = entry.value;
                  return Container(
                    decoration: BoxDecoration(
                      color: idx == question.correctIndex ? Colors.green.withOpacity(0.3) : null,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    child: Text(option),
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }
}
