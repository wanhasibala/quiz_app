class QuizQuestion {
  const QuizQuestion(this.text, this.answer);

  final String text;
  final List<String> answer;

  List<String> getShuffledAnswer() {
    final ShuffledList = List.of(answer);
    ShuffledList.shuffle();
    return ShuffledList;
  }
}
