/**
 * 
 * Class => Object || Instance
 * Variables => Attributes || Properties
 * Functions => Methods || Behaviour
 * 
 * Pillars
 * 1) Abstraction
 * 2) Inheritance
 * 3) Encapsulation
 * 4) Polymorephism
 * 
 
 * Types of Inheritance
 * 1) Single Inheritance
 * 2) Multiple Inheritance
 * 3) Multi level Inheritance
 * 4) Hirerachy Inheritance 
 */

void main() {
  // Human human1 = Human(name: "Owais");
  // human1.eating();
  // Human shabbir = Human.rider(name: "Shabbir", race: 50);

  Person person1 = Person("SHabbir");
  person1.printName();
}

class Human {
  String name = "";
  int race = 0;

  //Default Constructor
  Human({required this.name});
  // Human(name) {
  //   this.name = name;
  // }

  //Named Constructor
  Human.rider({required this.name, required this.race});

  eating() {
    print("$name can eat");
  }
}
class SmartPhone {
  bool camera = false;
  int storage = 0;
  String model = "";

  SmartPhone({required this.storage});
  SmartPhone.iPhone({required this.storage, required this.model});
  SmartPhone.android({required this.storage, required this.model});
  SmartPhone.iPad({required this.storage, required this.model});
}
class HumanForInheritance {
  String name = "";
  int age = 0;
  HumanForInheritance({required this.name});
}
class Person extends HumanForInheritance {
  Person(xyz) : super(name: xyz);
  printName() {
    print("name from Person class $name");
  }
}
