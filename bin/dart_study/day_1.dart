void main(){
  //문자열
  //String

  String familyName = 'KIM';
  String name = 'BIN HYUN';

  print('$familyName $name');
  
  //정수
  //integer

  int number1 = 100;
  print(number1);

  int number2 = 200;
  print(number2);

  print(number2 / number1);

  //실수
  //double

  double number3 = 2.5;
  double number4 = 2.7;

  print(number3 + number4);

  //참과 거짓
  //boolen
  bool isTrue = true;
  bool isFasle = false;

  print(isTrue.runtimeType);

  //어떤 것도 다 받을 수 있음
  //dynamic
  dynamic name1 = 300.25;
  print(name1.runtimeType);


}