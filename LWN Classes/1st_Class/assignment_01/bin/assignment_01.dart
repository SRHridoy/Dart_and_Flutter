void main() {
  //Q1: Take a String types variable and store value "We love Bangladesh". Then update value with "We love our mother land" and print it.
  String strValue = 'We love Bangladesh';
  print(strValue);
  strValue = 'We love our mother land';
  print(strValue);

  //Q2: Take three int types variable and add(+) them. And print the result.
  int num1 = 10;
  int num2 = 20;
  int num3 = 30;
  int sum = num1 + num2 + num3;
  print(sum);

  //Q3: Take a Map with values : {"country":"Bangladesh","population":"20 Core","prime_advisor":"D. Yunus"};Now print all keys and all values separately. And add a new value: "capital" : "Dhaka". Then remove population from the map and print the map.

  Map<String, String> map = {
    'country': 'Bangladesh',
    'population': '20 Core',
    'prime_advisor': 'D. Yunus',
  };
  print(map.keys);
  print(map.values);
  map['capital'] = 'Dhaka';
  print(map);
  map.remove('population');
  print(map);
}