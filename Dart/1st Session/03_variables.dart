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
