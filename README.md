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


>Functions : 
```dart
// String n = 'Global var but not recommended!'
void main() {
  String nameP = printName();
  print(nameP);

  //print(printName1());

  print(moreReturn());
  //here $n is a getter:
  print(moreReturn().$1);
  print(moreReturn().$2);
  print(moreReturn().$2.runtimeType);

  //access the whole record together:
  var (age, name, isAdult, behaviour) = moreReturn();
  print(name);
  print(age);
  print(isAdult);
  print(behaviour);

  String fName = 'Sohanur';
  printFname(fName, 22, 'Bye');
  print(fName);

  //Named Arguments:
  printLname(lname: 'Ahmed', age: 22, favColor: 'Blue');
  //here,position or serial doesn't matter:
  printLname(age: 22, lname: 'Ahmed', favColor: 'Blue');
  //as age can be nullable, so if we don't pass age,it's ok:
  printLname(lname: 'Ahmed', favColor: 'Blue');

  //Positional with named arguments:
  details(2102005, true,
      name: 'Zarif Tajul', marks: 100.00, address: 'Rajshahi');

  //Named Records:
  final sub = printSub();
  print(sub);
  print(sub.subject);
  print(sub.credit);

  //Returning function:
  final rf = returnFunc();
  rf();
  
  //Annonymous function :doesn't have name...
  () {
    print('I am annonymous function!');
  }();

  //Short-hand function;
  print(shortFunc());
}

/*
 * <dataType> functionName(){
 * }
 */

String printName() {
  return 'Hridoy';
}

//This is also valid but not recommended as it is dynamic...
// printName1() {
//   return 'Hridoy';
// }

//Returning more than one dataType:using records(-,-,-,-)...
(int, String, bool, String) moreReturn() {
  return (22, 'Hridoy', true, 'Good');
}

//Here we have to return null or a String:
String? nullAble() {
  return null;
  //print('Dead code as after return');
}

//Function with arguments:positional arguments
void printFname(String fname, int age, String greeting) {
  fname = "Rahman";
  print('Hello,$fname');
}

//Function with named arguments:
void printLname({required String lname, int? age, required String favColor}) {
  print('$lname $age $favColor');
}

//Postional with named arguments:(we have to care about that positional must be declared before named arguments)
void details(int id, bool isAdult,
    {required String name, required double marks, String? address}) {
  print('$id $isAdult $name $marks $address');
}

//Named records:
({double credit, String subject}) printSub() {
  return (subject: 'CSE-101', credit: 2.0);
}

//Returnig a function from a function :
Function returnFunc() {
  return () {
    print('I am returned function');
  };
}

//Short-hand function:
String shortFunc() => 'I am a short-hand function';

```

> Class :

```dart
void main() {
  //camelCase
  //PascalCase

//Here we instantiated again and again it's not the right way...
  // print(Cookie().shape);
  // print('${Cookie().size} cm');
  // Cookie().backing();
  // final isCookieCooling = Cookie().isCooling();
  // print(isCookieCooling);

//So we have to create one instance using ref. variable:
  //Cookie cookie = Cookie();
  final cookie = Cookie();//here, cookie is final but it's properties aren't final...
  cookie.backing();
  print(cookie.shape);
  cookie.shape = 'Triangle';
  print(cookie.shape);
}

class Cookie {
  //variables/properties
  String shape = 'Circle';
  double size = 15.2; //cm

  //functions/methods
  void backing() {
    print('Baking has started!');
  }

  bool isCooling() {
    return false;
  }
}

```

>Constructors:

```dart
void main() {
  final cookie = Cookie('Rectangle', 21.5); //new is optional...

   // Using named constructors
  Cookie cookie2 = Cookie.square(6.0);
}

class Cookie {
  final String shape;
  final double size;
  //Constructor:
  //Cookie(this.shape, this.size);//valid and if we don't need anything more we can use it...
  
  //Perameterized Constructor:
  Cookie(this.shape, this.size) {
    print(
        this); //This is an instance of a class. It indicate the current instance or object...
    print('Coookie Constructor called!');
    baking();
  }

  //Default constructor with named parameters:
 // Cookie({required this.shape, required this.size});

 // Named constructor
  Cookie.square(double size) : this('square', size);

 
  //method:
  void baking() {
    print(
        'Your cookie which is of the shape $shape and size $size cm is baking!');
  }
}

```

>Private Variables, Getters and Setters :

```dart
void main() {
  final cookie = Cookie(shape: 'Circle', size: 20);
  print(cookie.height);

  cookie.setHeight = 15;
  print(cookie.height);
}

class Cookie {
  final String shape;
  final double size;

  Cookie({required this.shape, required this.size});

  //Private variable :There no keyword for private, we have to put Underscrore(_) before any variable name to make it private...Private
  int _height = 4;
  int _width = 5;
  //NB: Private variables in dart are private for a file, not to a class.

  //Getters :
  int get height => _height;
  //Setters :
  set setHeight(int h) {
    _height = h;
  }

  int calculateSize() {
    return _height * _width;
  }
}
```

>Static variables and Static Functions:

```dart
void main() {
  //Here, using static, we don't need to create objects and it saves memory...
  print(Constants.greeting);
  print(Constants.bye);
  print(Constants.giveMeSomeValue());
}

class Constants {
  Constants() {
    print('Constructor is called!');
  }

  //Static variable:
  static String greeting = 'Hello, how are you?';
  static String bye = 'Bye!';

  //Static functions: non-static variable can't be accessed here.
  static int giveMeSomeValue() {
    return 10;
  }
}

```

>Inheritance : 
```dart
void main() {
  //Inheritance
  //If there is a"is-a" relation then, Inheritance will come...
  //Object Oriented Programming(OOP)

  //Dart doesn't support multiple inheritance to ignore ambiguities...

  Car car = Car();
  print(car.isEngineWorking);
  print(car.noOfWheels);

  Truck truck = Truck();
  print(truck.noOfWheels);
  print(truck.isEngineWorking);

  Vehicle car2 = Car();
  print(car2.isEngineWorking);
  //we can use as to get sepecial functionality of cars:
  print((car2 as Car).noOfWheels);

  //as demonstration: in dynamic we can't access the dedicated properties but if we use as int, then we can use all the dedicated properties of it...
  dynamic someValue = 10;
  print((someValue as int).isOdd);
  //But not recommended, we can use , var, final or the exact type...

  //No we can use the properties of SomeClass as Vehicle extends this:
  print(car.greeting);

  //Vehicle doesn't have speed, someclass has and here someclass has accelerate and vehicle also but here name should be same to override, return type does't matter...
  print(car.speed);
  print(car.accelerate());
}

class SomeClass {
  final String greeting = 'Hello,Vehicles!';
  int speed = 15;

  void accelerate() {
    speed += 30;
  }
}

class Vehicle extends SomeClass {
  bool isEngineWorking = false;
  bool isLightOn = true;

  @override
  int accelerate() {
    speed += 10;
    return speed;
  }
}

class Car extends Vehicle {
  int noOfWheels = 4;

  void printSomething() {
    print(noOfWheels);
  }
}

class Truck extends Vehicle {
  int noOfWheels = 8;

  void printSomething() {
    print(noOfWheels);
  }
}
```


>Implements : 
```dart
void main() {
  final car = Car();
  car.accelerate();
}

class otherClass {
  bool isEngineWorking = false;
  bool isLightOn = false;
}

class Vehicle {
  int noOfwheels = 10;
  void accelerate() {
    print('Accelerating');
  }
}

//We can extend and implement togethers but not the same class
class Car extends otherClass implements Vehicle {
  @override
  int noOfwheels = 4;
  @override
  void accelerate() {
    //allowed when we extends:
    // super.accelerate();
    // super.isEngineWorking = true;
    print(isEngineWorking);
    print(isLightOn);
    print(noOfwheels);
  }
}

class Truck implements Vehicle {
    @override
    int noOfwheels = 8;
  void accelerate() {
    print('Truck is accelerating');
  }
}
```

>Abstruct Classes : 
# Abstract Class Rules in Dart

## Key Rules of Abstract Classes

1. **An Abstract Class Cannot Be Instantiated**  
   - We cannot create an object of an abstract class directly.

2. **Extending an Abstract Class**  
   - When we **extend** an abstract class:
     - We inherit all **non-abstract members**.
     - We must override only the **abstract methods**.
       Variables or properties do not require overriding unless we want to modify them.

3. **Implementing an Abstract Class**  
   - When we **implement** an abstract class:
     - We must override **all members** of the class, including methods and variables.
     - For variables, we need to explicitly define their **getter** and **setter**.

---

## Key Takeaways from the Example

1. **Recursive Getter and Setter Issue**  
   - If a getter or setter references itself, it leads to **infinite recursion**, causing a runtime error (stack overflow).

2. **Solution: Use a Private Backing Field**  
   - Introduce a **private field** (e.g., `_noOfWheels`) to store the value and access it through the getter and setter. This avoids recursion and ensures proper encapsulation.

3. **Practical Usage**  
   - Abstract classes are powerful for defining shared behaviors while allowing flexibility for subclasses or implementing classes to define specific details.

---

## Example Code

```dart
void main() {
  final car = Car();
  car.accelerate();
  final truck = Truck();
  print('Truck wheels: ${truck.noOfWheels}');
}

abstract class Vehicle {
  void accelerate();
  int noOfWheels = 10;
}

// Extending an abstract class
class Car extends Vehicle {
  @override
  void accelerate() {
    print('Accelerating the Car, Wheels: $noOfWheels');
  }
}

// Implementing an abstract class
class Truck implements Vehicle {
  int _noOfWheels = 8;

  @override
  void accelerate() {
    print('Accelerating the Truck');
  }

  @override
  int get noOfWheels => _noOfWheels;

  @override
  set noOfWheels(int value) {
    _noOfWheels = value;
  }
}
```

# Method Overloading and Operator Overloading in Dart

## Method Overloading in Dart

Dart **does not** support method overloading.  
In other languages like Java or C++, you can define multiple methods with the same name but different parameters. Dart, however, focuses on simplicity and achieves similar functionality with **optional parameters**.

### Example using Optional Parameters:

```dart
class Calculator {
  int add(int a, [int b = 0]) {
    return a + b;
  }
}

void main() {
  final calc = Calculator();
  print(calc.add(5));     // Output: 5
  print(calc.add(5, 10)); // Output: 15
}
```
# Operator Overloading in Dart

Dart **supports operator overloading**.  
We can overload operators like `+`, `-`, `*`, etc., for custom classes using the `operator` keyword.

## Example of Overloading the `+` Operator:

```dart
class Point {
  int x, y;

  Point(this.x, this.y);

  // Overloading the '+' operator
  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }

  @override
  String toString() => 'Point($x, $y)';
}

void main() {
  Point p1 = Point(2, 3);
  Point p2 = Point(4, 5);

  Point result = p1 + p2; // Using overloaded '+' operator
  print(result);          // Output: Point(6, 8)
}
```

>Summary
 - Method Overloading: ❌ Not supported in Dart. Use optional parameters instead.
 - Operator Overloading: ✅ Supported using the operator keyword.

 # OOPS :
 ```dart
// Object-Oriented Programming (OOP) Concepts in Dart

void main() {
  // 1. **Polymorphism**: 
  // Demonstrates method overriding where different classes (Cat and Dog) can 
  // implement the same method (sound) in their own way.
  Animal cat = Cat();
  cat.sound();  // Output: Cat making sound
  cat = Dog();
  cat.sound();  // Output: Dog making sound

  // 2. **Abstraction**: 
  // Hides the internal details of the Animal class and allows interaction 
  // with objects through the Animal interface (abstract class).
  Animal anim = Cat();
  anim.sound();  // Output: Cat making sound
  Animal anim2 = Dog();
  anim2.sound();  // Output: Dog making sound

  // 3. **Inheritance**: 
  // Animal class is extended by Cat and Dog classes, inheriting the 
  // common structure but allowing customization of the sound() method.

  // 4. **Encapsulation**: 
  // This can be achieved by declaring variables or methods as `private` 
  // using the `_` symbol, ensuring data security and hiding implementation details.
}

// Abstract class representing an Animal
abstract class Animal {
  // Abstract method that will be implemented by subclasses
  void sound();
}

// Class representing a Cat, which is a type of Animal
class Cat extends Animal {
  @override
  void sound() {
    print('Cat making sound');
  }
}

// Class representing a Dog, which is a type of Animal
class Dog extends Animal {
  @override
  void sound() {
    print('Dog making sound');
  }
}

 ```

 # Summary of OOP Concepts in the Code

## 1. Polymorphism:
- The `sound()` method is overridden in both `Cat` and `Dog` classes, demonstrating polymorphism where the same method name produces different outputs based on the object type.

## 2. Abstraction:
- The `Animal` class is declared as an abstract class. The `sound()` method is abstract, meaning the concrete classes `Cat` and `Dog` must provide their own implementation. This hides the internal implementation details.

## 3. Inheritance:
- `Cat` and `Dog` inherit from the `Animal` class. They share the same structure but can provide different behaviors for the `sound()` method.

## 4. Encapsulation:
- Though not explicitly shown in the code, encapsulation can be demonstrated by declaring private variables or methods within a class. For example, variables in a class can be marked private by prefixing them with an underscore (`_`), ensuring that their values cannot be directly accessed from outside the class.


