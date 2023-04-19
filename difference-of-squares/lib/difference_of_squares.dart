class DifferenceOfSquares {
  int squareOfSum(int number) {
    int total = 0;
    for (int i = 1; i <= number; i++) {
      total += i;
    }
    return total * total;
  }

  int sumOfSquares(int number) {
    int totalSquares = 0;
    for (int i = 1; i <= number; i++) {
      totalSquares += i * i;
    }
    return totalSquares;
  }

  int differenceOfSquares(int number) {
    int sqs = squareOfSum(number);
    int sos = sumOfSquares(number);
    if (sqs > sos) {
      return sqs - sos;
    }
    return sos - sqs;
  }
}

void main() {
  final differenceOfSquares = DifferenceOfSquares();
  print(differenceOfSquares.squareOfSum(5));
  print(differenceOfSquares.sumOfSquares(10));
  print(differenceOfSquares.differenceOfSquares(100));
}
