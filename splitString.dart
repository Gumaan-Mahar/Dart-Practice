main() {
  StringSplit();
}

StringSplit() {
  String givenString = 'nike shoes';
  List<String> splitString = givenString.split(' ');
  print(splitString);
  var bufferConcatenate = StringBuffer();
  splitString.forEach((element) {
    bufferConcatenate.write(element);
  });
  // concatenate = concatenate.replaceAll(r' ', '');
  var concatenate = bufferConcatenate.toString();
  print(bufferConcatenate);
  List stringList = [];
  for (var i = 0; i < concatenate.length; i++) {
    String letter = concatenate[i];
    print(letter);
    String letterAgain = '';
    for (var j = 0; j <= i; j++) {
      letterAgain += concatenate[j];
    }
    stringList.add(letterAgain);
    stringList.add(letter);
  }
  splitString.forEach((element) {
    stringList.add(element);
  });
  print(stringList);
}
