import 'dart:async';

void main() {

  //StreamController 는 dart:async 패키지에서 가져온다.
  final controller = StreamController();
  
  //controller.stream 은 하나의 리스너만 사용한다. 
  //여러개를 사용하려면 asBroadcastStream를 사용한다.
  final stream = controller.stream.asBroadcastStream();

  //listen 에선 하나의 파라미터를 받는다.
  //where 와 같이 메소드를 붙여서 사용이 가능하다.
  final streamListener1 = stream.where((val) => val %2 == 0).listen((val){
    print("Listener1 : $val");
  });

  //여러개를 생성할 수도 있다.
  final streamListener2 = stream..where((val) => val %2 == 1).listen((val){
    print("Listener2 : $val");
  });

  //Listener1에게 값을 전달하기 위해서 sink.add를 사용한다.
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}
