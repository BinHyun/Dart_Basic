import 'dart:async';

void main() {
  //calculate(10).listen((val){
  //  print("calculate(10) => $val");
  //});

  //calculate(100).listen((val){
  //  print("calculate(100) => $val");
  //});

  playAllStream().listen((val){
    print(val);
  });
}

Stream<int> playAllStream() async*{

  //yield*을 붙이게 되면 yield*가 붙은 함수의 작동이 모두 끝날때 까지 기다린다.
  yield* calculate(20);
  yield* calculate(50);
}




//Stream 과 async를 사용하기 위해선 async* 을 사용한다.
Stream<int>calculate(int number) async* {
  for(int i=0; i<5; i++){

    //yield 가 작동할 때마다, 리스너에게 값을 전달 할 수 있다.
    //일반적인 함수는 return으로 반환을 함과 동시에 함수가 종료되나 
    //Stream을 사용하여 값을 계속적으로 전달 할 수 있다.
    yield i * number;

    //이렇게도 사용 할 수 있다.
    await Future.delayed(Duration(seconds: 1));
  }
}
