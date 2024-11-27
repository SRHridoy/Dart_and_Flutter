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
