class Question {
  final String question;
  final List<String> options;
  final String correctAnswer;
  final String ipucu;

  Question(this.question, this.options, this.correctAnswer, this.ipucu);

  bool isCorrect(String secilen) {
    return secilen == correctAnswer;
  }
}
