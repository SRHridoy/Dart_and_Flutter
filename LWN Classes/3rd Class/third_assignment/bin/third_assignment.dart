import 'dart:io';

void main() {
  //Write a Dart program that uses a for loop to calculate the sum of all positive integers entered by the user. The program should keep prompting the user to enter a number until they input a negative number. Once a negative number is entered, the program should stop and display the total sum of the positive integers.

  

  int sum = 0;
  for (;;) {
    print('Enter a positive number (enter a negative number to stop):');
    int num = int.parse(stdin.readLineSync()!);
    if (num < 0) {
      break;
    } else {
      sum += num;
    }
  }
  print('The total sum of positive integers is : $sum');
}
