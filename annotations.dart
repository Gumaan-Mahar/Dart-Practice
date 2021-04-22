main() {
  MyExampleClass(5).writeDetails();
}

class Something {
  final int val;

  const Something(this.val);

  void writeDetails() {
    print('The value is: ${this.val}');
  }
}

class MyExampleClass extends Something {
  MyExampleClass(int val) : super(val);

  // @override
  @override
  void writeDetails() {
    // ignore: todo
    // TODO: implement writeDetails
    super.writeDetails();
    print('Value multiplied by 10 is: ${this.val*10}');
  }
}
