void main() {
  final result = nameAndAge({
    "name" : "빈현",
    "age" : 38
  });

  //print(result);

  //$ 뒤에 숫자를 붙일수도 있다.
  //print(result.$1); //String
  //print(result.$2); //int

  //final result2 = getNewJeansWithType();
  //for(final item in result2){
    //print(item.$1); //String
    //print(item.$2); //int
  //}

  //위 방법들 처럼 $1, $2의 경우 순서를 기반으로 하였으나
  //아래와 같이 이름을 기반으로도 할 수 있다.
  final result3 = getNewJeansWithType3();
  for(final item in result3){
    print(item.name);
    print(item.age);
  }
}

//Record 는 순서와 타입을 보장해준다.
(String, int)nameAndAge(Map<String, dynamic> json){
  //Json으로 받는다는 가정하에 아래와 같이 받을 수 있다.
  //다만 타입과 순서에 대한 보장은 없다.
  //return [json['name'], json['age']];

  //그렇기에 아래와 같이 ()로 감싸서 타입과 순서에 대한 보장을 해줄 수 있다.
  return (json['name'] as String, json['age'] as int);
}

//String 또는 int가 값의 타입이라고 지정할 수 있는 방법이 없기에
//일반적으론 아래와 같이 dynamic 으로 타입을 지정한다. 
List<Map<String, dynamic>> getNewJeans(){
  return [
    {
      "name" : "민지",
      "age" : 20
    },
    {
      "name" : "해린",
      "age" : 20 
    }
  ];
}

//하지만 타입을 선언을 할 때 아래와 같이 () 안에 타입을 지정해주고,
//{} 로 감싸져 있던 것을 ()로 바꿔 준 다음 키 값을 제거한다.
//이렇게 되면 (String, int) 타입이 이렇게 선언이 되어 있고 Record가 적용되어 있어
//타입, 순서를 모두 보증해줄 수 있다.
List<(String, int)> getNewJeansWithType(){
  return [
    (
      "민지",
      20
    ),
    (
      "해린",
      20 
    )
  ];
}

//위 방법은 (String, int) 처럼 타입만 선언을 해주었으나
//아래의 방법 같이 이름까지 같이 지정해줄도 있다.
List<(String name, int age)> getNewJeansWithType2(){
  return [
    ("민지",20),("해린",20)
  ];
}

//아래와 같이 (String name, int age) 라고 선언된 부분을 {(String name, int age)} 이렇게 감싸준 뒤
//이름들을 붙여주면, 해당 반환값을 사용할때 item.name, item.age 와 같이 사용이 가능하다.
List<({String name, int age})> getNewJeansWithType3(){
  return [
    (
      name : "민지",
      age : 20
    ),
    (
      name : "해린",
      age : 20 
    )
  ];
}