class Calc {
  List<int> scorekeeper = [];
  void add(int nub) {
    scorekeeper.add(nub);
  }

  void remove(int nub) {
    scorekeeper.removeAt(nub);
  }

  int? score;
  int sum() {
    return score = scorekeeper[0] +
        scorekeeper[1] +
        scorekeeper[2] +
        scorekeeper[3] +
        scorekeeper[4] +
        scorekeeper[5] +
        scorekeeper[6] +
        scorekeeper[7] +
        scorekeeper[8] +
        scorekeeper[9] +
        scorekeeper[10] +
        scorekeeper[11] +
        scorekeeper[12] +
        scorekeeper[13] +
        scorekeeper[14] +
        scorekeeper[15] +
        scorekeeper[16] +
        scorekeeper[17] +
        scorekeeper[18] +
        scorekeeper[19] +
        scorekeeper[20] +
        scorekeeper[21] +
        scorekeeper[22] +
        scorekeeper[23] +
        scorekeeper[24] +
        scorekeeper[25] +
        scorekeeper[26] +
        scorekeeper[27] +
        scorekeeper[28] +
        scorekeeper[29];
  }

  double? scoPer;
  double percentage() {
    return scoPer = (score! / 30) * 100;
  }

  void reset() {
    scorekeeper.clear();
  }
}
