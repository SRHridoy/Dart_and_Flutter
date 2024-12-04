void main() {
  //post increment:
  int a = 10;
  print(a++);
  print(a);
  //pre increment:
  int b = 20;
  print(++b);
  print(b);

  //For loop:
  for (var i = 0; i < 10; i++) {
    print('Number is $i');
  }

  //While loop:
  int j = 0;
  while (j > 10) {
    print('Number is $j');
  }

  //List of Numbers:
  List<String> list = ['A', 'B', 'C', 'D', 'E', 'F'];
  for (var element in list) {
    print(element);
  }
}
