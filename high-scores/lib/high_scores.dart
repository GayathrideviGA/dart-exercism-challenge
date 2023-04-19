class HighScores {
  // Put your code here
  final List<int> scores;
  HighScores(this.scores);

  int latest() {
    return scores.last;
  }

  int personalBest() {
    int maxScore = scores[0];
    for (int i = 0; i < scores.length; i++) {
      if (scores[i] > maxScore) {
        maxScore = scores[i];
      }
    }
    return maxScore;
  }

  List<int> personalTopThree() {
    if (scores.length < 3) {
      return scores;
    }
    List<int> topThree = [scores[0], scores[1], scores[2]];
    topThree.sort((a, b) => b.compareTo(a));
    for (int i = 3; i < scores.length; i++) {
      if (scores[i] > topThree[2]) {
        topThree[2] = scores[i];
        topThree.sort((a, b) => b.compareTo(a));
      }
    }
    return topThree;
  }
}

void main() {
  final scores = HighScores(<int>[30, 50, 20, 100, 70]);
  print(scores.latest());
  print(scores.personalBest());
  print(scores.personalTopThree());
}
