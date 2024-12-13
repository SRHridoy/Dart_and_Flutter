import 'dart:math';

void main() {
  Circle circle = Circle();
  circle.draw();
  circle.description();

  Rectangle rectangle = Rectangle();
  rectangle.draw();
  rectangle.description();
}

abstract class Shape {
  draw();
  void description() {
    print("This is a Shape!");
  }
}

class Circle extends Shape {
  @override
  draw() {
    print('Circile is Drawn!');
  }

  @override
  void description() {
    print(
        'The circle has a radius of 2cm and it\' area is about ${(pi * pow(2, 2)).toStringAsFixed(3)}cm^2');
  }
}

class Rectangle extends Shape {
  @override
  draw() {
    print('Rectangle is drawn!');
  }

  @override
  void description() {
    print(
        'The Rectangle has a length of 2cm and a width of 1cm and it\'s area is about 2cm^2');
  }
}
