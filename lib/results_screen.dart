import 'package:flutter/material.dart';
import 'package:first_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswer,
  });

  final List<String> chosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have answered X corrected of Y questions'),
            const SizedBox(height: 30),
            const Text('List of the answer:'),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Restart'),
            ),
          ],
        ),
      ),
    );
  }
}
