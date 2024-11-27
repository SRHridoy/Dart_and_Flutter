void main() {
  //Loops:

  //For Loop:
  //for(init; condition; increment/decrement){

  //}

  //i++ -> i = i+1
  //i-- -> i = i-1
  //i+=2 -> i = i+2

  for (int i = 0; i < 10; i++) {
    String hi = 'Hello World';
    print(hi.substring(i, hi.length));
    print('Hello World ${i + 1}');
  }

  String str = 'Flutter';

  //String? revStr;

  /*
    String? revStr is nullable and not initialized:
    revStr starts as null, and you are trying to concatenate null with str[i].
    This causes a runtime error since null safety in Dart doesn’t allow operations with a nullable type directly.
  */

  String revStr = '';
  for (int i = str.length - 1; i >= 0; i--) {
    revStr = revStr + str[i];
  }
  print(revStr);

  //While Loop:
  int i = 0;
  while (i < 10) {
    print(i);
    i++;
    if (i == 0) continue;
    if (i == 8) break;
    
  }

  //For loop is used when iteration is known otherwise while...

  //For and while are Entry control loop...

  //Do while loop: Exit control loop...
  do {
    print('Hello $i');
    i++;
  } while (i > 11);
}
