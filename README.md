> # Dart and Flutter

## Dart:

>Printing : 
```dart
void main() {
  print('Hello World');
  print(3);
  print(3 + 2 - 2 * 2 / 4);
  print('3' + '2');
  //prints 3 , 22 times :
  print('3' * 22);

  //Dart Follows BODMAS
  print(75 / 5 + 2);
}
```

>Comments :
```dart
//Single line comments
  /*
    Multi-line
    comments
  */
```

>Variable :

```dart
void main() {
  //variable

  //Integer:
  int firstValue = 302;
  firstValue = 22;
  firstValue = firstValue + 32;
  //Shorthand:
  firstValue += 2;
  print(firstValue.isEven);
  print(firstValue.isFinite);
  print(firstValue.runtimeType);
  //many more methods and properties are there...

  //Double:
  double pi = 3.1416;
  print(pi);

  //Boolean:
  bool isTrue = false;
  print(isTrue);

  //String:
  String str = 'Hello,World';

  //str = str + ' Yup!'; not recommeded
  //Use interpolation:
  str = '${str} Yup!';
  print(str);

  //If we want to use doller then, we can use "\" before $:
  str = '\$12';

  print(str);
  print(str.length);
  print(str.isNotEmpty);

  //For Mulitine - Strings:
  str = ''' This 
    is a
    mulitline string;
  ''';
  print(str);

  str = '"\\n" is used for \n new line!';
  print(str);

  //Dynamic: Can take any value, not recommended...If we use this we don't get many properties and mathods in variable...

  dynamic anything = 4.2;
  anything = 'greet!';
  print(anything);

  //print(anything + '4');//At compile time it doesn't show error...Throw in run-time

  //Variable name can't be same even if type is different:
  //int firstValue = 22;
  //double firstValue = 3.14;
}

```

>Var, Final, Const:
```dart
void main() {
  //Var/final/const variableName = value;

  //var ---> can infer...Dart type system can automatically detect this...

  var someValue = 10;
  print(someValue);
  print(someValue
      .isOdd); //We can use all dedicated properties and methods using var...

  //Throw an error:
  //someValue = '20';

  //Type inference is same in all these cases. But differ in re-assignment...
  var someValue1 = '10';
  final someValue2 = '10';
  const someValue3 = '20';
  print(someValue1);
  print(someValue2);
  print(someValue3);

  someValue1 = '303';
  //Can't re-assign final and const but var can...So, var is mutable and final,const are immutable...
  // someValue2 = '22';
  // someValue3 = '221';

  //final vs const:
  final currDate = DateTime.now();
  print(currDate);

  //const currDate2 = DateTime.now();//cause an compile-time error...

  //currDate = DateTime.now();//Cause error as final can only be set once...

  //final is a run-time constant, and const is a compile-time constant...

  //We can also declear explicitly it's type,But not neccessary...
  final String str1 = 'Hello';
  print(str1);
}

```

>Nullable / Optional Variables:

```dart
String? outStr;
void main() {
  //Optional Variables/Nullable variables:
  //String/int/bool/etc and null

  String someValue = '';
  int some = 0;

  //can be null: if we use ?
  int? some1 = null;
  //int some2 = null;//error

  //final someF = null;//Now it's dynamic as null and we don't get the dedicated properties and methods...
  //const someC = null;

  //But if we use dataType? then we can access the dedicated things...:
  String? str = null;
  print(str);
  //print(str.length);

  //We don't have explicitly set to null, it automatically initialized with null:
  String? str2;
  print(str2);
  str2 = 'Goooo';
  print(str2);
  str2 = null;
  print(str2);

  //print(str2.length);//will give compile-time error
  //But if we use:
  //print(str2!.length);//Give us run-time error...here we saying it's not null but it's really null...

  //So,we have to use ? , then if it is null print null or print the length:
  print(str2?.length);
  str2 = 'Great';
  //print(str2?.length);// throw an warining as it knows that value is assigned...
  //So, we can can now simply use this without ?:
  print(str2.length);

  //So,why ?, in the same function or block dart can identify but outside block it can't so then we use it:
  print(outStr);
  outStr = null;
  print(outStr);

  outStr = 'Hello inside!';
  // print(outStr.length); //Gives error as outStr is outside and dart can't interpret this ...
  print(outStr?.length);

  //but if null then we won't show null to our user then we have to use ?? to show alternative message:
  outStr = null;
  print(outStr?.length ?? 'There is no value');
  outStr = 'Contents';
  print(outStr?.length ?? 'There is no value');

  //print(outStr!.length ?? 'This is invalid!');// This shows warning as we say here this is not null and again said if null print this...So,contradictory thing...
}

```
> If,Ternary, Switch Statements : 

```dart
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

```

>Loops :
```dart
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

```



