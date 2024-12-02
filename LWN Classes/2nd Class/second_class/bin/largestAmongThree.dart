void main() {
  int num1 = 20;
  int num2 = 30;
  int num3 = 40;

  if (num1 > num2 && num1 > num3) {
    print('$num1 is the largest');
  } else if (num2 > num1 && num2 > num3) {
    print('$num2 is the largest');
  } else {
    print('$num3 is the largest');
  }
}
