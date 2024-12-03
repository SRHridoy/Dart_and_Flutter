import 'dart:io';

void main() {
  //Q1: Find the smallest number among 34,67,23 using if else condition.
  int num1 = 34;
  int num2 = 67;
  int num3 = 23;

  if (num1 < num2 && num1 < num3) {
    print('$num1 is the smallest number!');
  } else if (num2 < num1 && num2 < num3) {
    print('$num2 is the smallest number!');
  } else {
    print('$num3 is the smallest number!');
  }

  //Q2: Take a input from user and identify that Its odd or not.
  print('Enter a number : ');
  int num = int.parse(stdin.readLineSync()!);
  if (num % 2 == 0) {
    print('$num is even');
  } else {
    print('$num is odd');
  }
}
