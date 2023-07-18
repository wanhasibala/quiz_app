import 'package:flutter/material.dart';
import 'package:quizz_app/start_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.StartScreen,{super.key});
  final Function() StartScreen;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X of Y questions correctly!'),
            const SizedBox(
              height: 30,
            ),
            const Text('List of answer and questions...'),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: StartScreen,
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
