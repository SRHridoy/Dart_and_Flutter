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
