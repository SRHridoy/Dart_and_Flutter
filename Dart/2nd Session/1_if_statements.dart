import 'dart:ffi';

bool isAllowed = false;
void main() {
  //If statements:

  int age = 13;
  if (age >= 18 && age < 60) {
    print('Adult');
  } else if (age >= 60) {
    print('Senior Citizen');
  } else {
    if (!isAllowed) print('Child');
  }

  //we can compare strings also :
  String somVal = 'Hi!';
  if (somVal == 'Hi!') {
    print("Matched");
  } else {
    print("Don't match");
  }

  if (somVal.isEmpty) {
    print('WOW');
  } else if (somVal.startsWith('H')) {
    print('Correct');
  }

  //Ternary:
  String value = somVal.startsWith('H') ? 'WOW' : 'VUA';
  print(value);

  //Switch Statement: break is optional, but if no statement under a case then it is neccessay...
  switch (value) {
    case 'WOW':
      print('Case 1');
      break;
    case 'Hello':
      print('Case 2');
    default:
      print('Default');
  }

  //Switch didn't allow using relational operators(like ==, !=): in this scenario we can use when in case and use conditions...
  int ageS = 20;
  switch (value) {
    case 'WOW' when ageS >= 20:
      print('Yappp');
    case 'Bye':
      print('Done');
    default:
      print('Default');
  }
}
