class UserAnswers {
  List<String> answerList = [];

  void add(String nub) {
    answerList.add(nub);
  }

  void clear() {
    answerList.clear();
  }

  void remove(int nub) {
    answerList.removeAt(nub);
  }

  String getUserPicked(int questionNumba) {
    return answerList[questionNumba];
  }
}
