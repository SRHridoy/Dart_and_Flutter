import 'dart:io';

void main() {
  //int num = 100;
  print('Enter a Number : ');
  String num = stdin.readLineSync()!;
  
  if (int.parse(num) % 2 == 0) {
    print('$num is Even');
  } else {
    print('$num is Odd');
  }
}
