void main() {
  final cookie = Cookie('Rectangle', 21.5); //new is optional...
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

  //Named constructor:
 // Cookie({required this.shape, required this.size});

 
  //method:
  void baking() {
    print(
        'Your cookie which is of the shape $shape and size $size cm is baking!');
  }
}
