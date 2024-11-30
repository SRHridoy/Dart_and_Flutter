void main() {
  final car = Car();
  car.accelerate();
  final truck = Truck();
  print(truck.noOfWhells);
}

abstract class Vehicle {
  void accelerate();
  int noOfWhells = 10;
}

//We can extends or implements abstract class and we must have to override in child class:

class Car extends Vehicle {
  @override
  void accelerate() {
    print('Accelerating the Car  $noOfWhells');
  }
}

//If we implement we me must override the variable also by defining getter and setter...
class Truck implements Vehicle {
  int _noOfWhells = 8;
  @override
  void accelerate() {
    print('Accelerating the Truck');
  }

  @override
  int get noOfWhells => _noOfWhells;

  @override
  set noOfWhells(int noOfWhells) {
    _noOfWhells = noOfWhells;
  }
}
