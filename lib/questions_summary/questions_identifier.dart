import 'package:flutter/material.dart';

class questionsIdentifier extends StatelessWidget {
  const questionsIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isCorrectAnswer ? Colors.deepOrange[400] : Colors.blueAccent,
          borderRadius: BorderRadius.circular(100)),
      child: Text(
        questionNumber.toString(),
        style:
            const TextStyle(fontWeight: FontWeight.w600, color: Colors.black54),
      ),
    );
  }
}
