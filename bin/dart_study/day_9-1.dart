void main() async{
  //future 
  //미래에 받아올 값을 미리 저장할 수 있다.
  //Future 키워드를 쓰면 async 를 할 수 있다.
  Future<String> name = Future.value("김빈현");
  Future<int> number = Future.value(5);
  Future<bool> isTrue = Future.value(true);

  //print("함수 시작");

  //delayed는 2개를 받을 수 있다.
  //1번 파라미터 - 지연할 기간(시간) 타입은 Duration
  //2번 파라미터 - 지연 시간이 지난 후 실행할 함수
  //Future.delayed(Duration(seconds: 2), (){
  //  print("delay 종료");
  //});

  //async / await의 경우 반드시 return 값이 Future 여야 한다.
  final result1 = await addNumbers(1, 1);
  final result2 = await addNumbers(5, 5);
  print("result1 + result2 = $result1 + $result2");
}

//await 키워드를 사용하기 위해선, 함수 이름과 바디 사이에 반드시 async를 넣어줘야 한다.

//async/await 키워드를 사용할 시 실행순서
//계산 시작 -> 2초 대기 -> 함수 실행 -> 계산 완료 -> 함수 완료

//async/await 키워드를 사용하지 않을 시 실행순서
//계산 시작 -> 함수 완료 -> 계산 완료

//Future 로 감싸야만 async / await를 사용할 수 있다.
Future<int> addNumbers(int number1, int number2) async {
  print("계산 시작 : $number1 + $number2");

  //async 키워드를 사용하면 Future 앞에 await를 사용할 수 있다.
  await Future.delayed(Duration(seconds: 2), (){
    print("계산 완료 : $number1 + $number2 = ${number1 + number2}");
  });

  print("함수 완료 : $number1 + $number2");

  return number1 + number2;

}
