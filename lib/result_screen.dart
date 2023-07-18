import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/start_screen.dart';
import 'package:quizz_app/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswer});

  final List<String> choosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add(
        {
          'questions_index': i,
          'questions': questions[i].text,
          'correct_answer': questions[i].answer[0],
          'user_answer': choosenAnswer[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestion = questions.length;
    final correctAnswer = summaryData.where((data) {
      return data['user_answer'] == ['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $correctAnswer of $totalQuestion questions correctly!',
            style: GoogleFonts.inter(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700
            ),),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.restart_alt),
              label: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
