main() {
  final firstInstance = MyExampleClass('Kristine', 'Pakistani', 14);
  print(firstInstance.ageGet);
  firstInstance.ageSet = 20;
  print(firstInstance.ageGet);
  firstInstance._age = 27;
  print(firstInstance.ageGet);
}

class MyExampleClass {
  String name;
  String nationality;
  int _age;

  MyExampleClass(this.name, this.nationality, int givenAage)
      : this._age = givenAage {
    this._age < 18 ? this._age = 18 : this._age = this._age;
  }

  //getters and setters are used to control writing/reading on variables.
  int get ageGet => this._age;

  set ageSet(int val) {
    if (val < 18) {
      this._age = 18;
    } else {
      _age = val;
    }
  }
}
