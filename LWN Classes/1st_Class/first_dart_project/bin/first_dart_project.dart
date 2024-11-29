void main() {
  //Integer:
  int a = 10;
  int b = 20;
  int sum = a + b;
  print(sum);

  //Double:
  double aD = 10.50;
  double bD = 20.50;
  double sumD = aD + bD;
  print(sumD);

  double divD = aD / bD;
  //After decimal how many number we want:
  print(divD.toStringAsFixed(2));

  //String:
  String city = 'Rajshahi';
  String city1 = 'Dinajpur';
  String city2 = city + city1;
  print(city2);

  //Boolean:
  bool verified = true;
  print(verified);

  //List:
  List numbers = [10, 20, 30, 40, 50];
  print(numbers);
  print(numbers.length);
  print(numbers[2]);

  List<dynamic> xyz = [10, 'Rajshahi', true, 120, 14.5];
  print(xyz);

  //Append at last index:
  xyz.add('Dhaka');
  print(xyz);
  //Append at specific index:
  xyz.insert(0, 'Dinajpur');
  print(xyz);

  //Update:
  xyz[1] = 'Bogura';
  print(xyz);

  //Delete at specific index:
  xyz.removeAt(2);
  print(xyz);
  //Delete specific element:
  xyz.remove(120);
  print(xyz);
  //Delete all:
  xyz.clear();
  print(xyz);

  //Generics: When we specificly said any type, then it's called generics...By default dynamic thake....
  List<int> listOfInt = [1, 2, 3, 4, 5];
  print(listOfInt);

  //List of List:
  List listOfList = [
    [1, 3, 5],
    [2, 4, 6]
  ];
  print(listOfList[0]);
  print(listOfList[0][2]);

  //Map:
  Map<String, dynamic> map = {
    'name': 'SRHridoy',
    'age': 25,
    'gender': 'Male',
    'Favourite languages': ['C', 'C++', 'Java', 'Dart', 'Python']
  };

  //Add in map:
  map['subject'] = 'cse';
  map.addAll({'isAdult': true});
  print(map);
  print(map['name']);

  //Delete from map:
  map.remove('gender');
  print(map);
  //Show keys and values:
  print(map.keys);
  print(map.values);
  //Show specific list value in map:
  print(map['Favourite languages'][3]);

  List<String> favLang = map['Favourite languages'];
  print(favLang[2]);
  
}
