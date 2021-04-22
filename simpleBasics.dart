// import 'OperatorOverload.dart';
import 'extensionMethod.dart';

void main() {
  var myFavNum = "17728";
  var newNum = int.tryParse(myFavNum);
  if (newNum == null) {
    newNum = 0;
    print(newNum);
    print(newNum is int);

    print(newNum.toString());
    var myFavFloat = "3773-6372.99";
    double? newFloat = double.tryParse(myFavFloat);
    print(newFloat);
  }

  String strFactor = '19/6';
  if (strFactor.isFraction()) {
    final factrFactor = strFactor.toFraction();
    print(factrFactor.writeDetails());
  }
}
