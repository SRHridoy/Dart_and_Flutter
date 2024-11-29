void main() {
  final car = Car();
  car.accelerate();
}

class otherClass {
  bool isEngineWorking = false;
  bool isLightOn = false;
}

class Vehicle {
  int noOfwheels = 10;
  void accelerate() {
    print('Accelerating');
  }
}

//We can extend and implement togethers but not the same class
class Car extends otherClass implements Vehicle {
  @override
  int noOfwheels = 4;
  @override
  void accelerate() {
    //allowed when we extends:
    // super.accelerate();
    // super.isEngineWorking = true;
    print(isEngineWorking);
    print(isLightOn);
    print(noOfwheels);
  }
}

class Truck implements Vehicle {
    @override
    int noOfwheels = 8;
  void accelerate() {
    print('Truck is accelerating');
  }
}
