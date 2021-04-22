void main() {
  print(
    MagicalAgeGenerator(20, 2000).mySecretMethod2(),
  );
}

class MagicalAgeGenerator {
  int _secret;
  double _superSecret;

  MagicalAgeGenerator(int age, double wallet)
      : _secret = age,
        _superSecret = wallet;

  mySecretMethod() {
    return (((_secret + 10) ~/ 10) * 8) + 2;
  }

  mySecretMethod2() {
    return mySecretMethod() / _superSecret;
  }
}
