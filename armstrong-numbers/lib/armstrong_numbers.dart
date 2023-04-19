class ArmstrongNumbers {
  bool isArmstrongNumber(String digit) {
    int sum = 0;
    int power = 0;
    int armstrongValue = 0;
    for (int i = 0; i < digit.length; i++) {
      int value = int.parse(digit[i]);
      power = digit.length;
      sum += value ^ power;
    }
    armstrongValue = int.parse(digit);
    if (sum == armstrongValue) {
      return true;
    } else {
      return false;
    }
  }
}
