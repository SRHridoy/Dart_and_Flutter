void main() {
  //Object Oriented Programming(OOP):
  //1. Polymorphism
  Animal cat = Cat();
  cat.sound();
  cat = Dog();
  cat.sound();
  //2.Abstraction
  //Here the internal details fo animal class is hidden and we can achieve abstraction using Abstract class and Interfaces...
  Animal anim = Cat();
  anim.sound();
  Animal anim2 = Dog();
  anim2.sound();
  //3.Inheritance

  //4.Encapsulation
  //We can achieve using private...
}

abstract class Animal {
  void sound();
}

// class Animal {
//   void sound() {
//     print('Animal making sound');
//   }
// }

class Cat extends Animal {
  @override
  void sound() {
    print('Cat making sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog making sound');
  }
}
