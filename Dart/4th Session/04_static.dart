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
