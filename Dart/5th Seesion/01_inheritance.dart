void main() {
  //Inheritance
  //If there is a"is-a" relation then, Inheritance will come...
  //Object Oriented Programming(OOP)

  //Dart doesn't support multiple inheritance to ignore ambiguities...

  Car car = Car();
  print(car.isEngineWorking);
  print(car.noOfWheels);

  Truck truck = Truck();
  print(truck.noOfWheels);
  print(truck.isEngineWorking);

  Vehicle car2 = Car();
  print(car2.isEngineWorking);
  //we can use as to get sepecial functionality of cars:
  print((car2 as Car).noOfWheels);

  //as demonstration: in dynamic we can't access the dedicated properties but if we use as int, then we can use all the dedicated properties of it...
  dynamic someValue = 10;
  print((someValue as int).isOdd);
  //But not recommended, we can use , var, final or the exact type...

  //No we can use the properties of SomeClass as Vehicle extends this:
  print(car.greeting);

  //Vehicle doesn't have speed, someclass has and here someclass has accelerate and vehicle also but here name should be same to override, return type does't matter...
  print(car.speed);
  print(car.accelerate());
}

class SomeClass {
  final String greeting = 'Hello,Vehicles!';
  int speed = 15;

  void accelerate() {
    speed += 30;
  }
}

class Vehicle extends SomeClass {
  bool isEngineWorking = false;
  bool isLightOn = true;

  @override
  int accelerate() {
    speed += 10;
    return speed;
  }
}

class Car extends Vehicle {
  int noOfWheels = 4;

  void printSomething() {
    print(noOfWheels);
  }
}

class Truck extends Vehicle {
  int noOfWheels = 8;

  void printSomething() {
    print(noOfWheels);
  }
}
