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
