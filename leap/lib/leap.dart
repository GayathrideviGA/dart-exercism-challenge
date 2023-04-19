class Leap {
  // Put your code here
  bool leapYear(int year) {
    if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) {
      return true;
    }
    return false;
  }
}

void main() {
  print(Leap().leapYear(2000));
  print(Leap().leapYear(1997));
  print(Leap().leapYear(1996));
  print(Leap().leapYear(1900));
}
