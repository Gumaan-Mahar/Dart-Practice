void main() {
  final t1 = Test(a: 4, b: 9, c: 'Letter C');
  print(t1.hashCode);
  print(t1.getHashCodes());
}

class Test {
  final int a;
  final int b;
  final String c;

  Test({required this.a, required this.b, required this.c});

  @override
  bool operator ==(Object other) {
    // Check whether two refreneces are to the same object
    if (identical(this, other)) {
      return true;
    }

    //Check whether the runtimeType of both objects are same
    if (other is Test) {
      final example = other;
      if (this.runtimeType == example.runtimeType) {
        return true;
      }
    }
    //If none of the above conditional statements getsatisfied, return false.
    return false;
  }

  // int get hashCode => a.hashCode;
  //Hashcode Overriding
  int get hashCode {
    const prime = 10;
    var result = 1;

    result = prime * result + a.hashCode;
    result = prime * result + b.hashCode;
    return prime * result + c.hashCode;
  }

  String getHashCodes() {
    return 'A: ${a.hashCode}, B: ${b.hashCode}, C: ${c.hashCode}';
  }
}

// 1. Overriding hashCode manually becomes too verbose if you have too many number variables, 
// use The Equatable Package instead! Does pretty much the same thing.
// 2. Don't override hashCode if your class is immutable! Not every instance 
// variable is final. It's gonna break the hashcodes of your collections.
// 3. Don't use Equatable if your class is not mutable!
