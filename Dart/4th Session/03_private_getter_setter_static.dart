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
