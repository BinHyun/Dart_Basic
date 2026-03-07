void main() {
  //Pattern matching
  final binHyun = ("빈현", 38);
  final (name as String, age as int) = binHyun;

  //print(name);
  //print(age);

  //switcher([1,2,3]);
  //switcher([100, 110]);
  //switcher(7);

  //print(switcher2(5 , true));
  forLooper();
}

void switcher(dynamic anything){
  switch(anything){
    case "aaa" : 
      print("match: aaa");
    case ["1", "2"]:
      print("match: [1, 2]");

    //아래와 같이 _만 작성한 뒤
    //switcher([1,2,3]); 이런식으로 호출 하더라도 출력이 가능하다
    ///즉 패턴을 매치해줄 수 있다.   
    case [_, _, _,]:
      print("match: [_, _, _]");
    case [int a, int b]:
      print("match: [int $a, int $b]");
    
    //아래와 같이 비교 연산자 대입도 가능하다.
    case < 10 && > 5:
      print("match: <10 && >5");

    default: 
      print("no match");
  }
}

//특이하게도 switch 문을 아래와 같이 arrow 함수로 만들 수 있다.
String switcher2(dynamic val, bool condition) => switch(val){
  //case를 생략하고, val에 들어갈 값을 아래와 같이 세팅할 수 있다.
  5 => "match: $val",
  //when 키워드를 사용하여 조건을 추가할 수 있다.
  7 when condition => "match 7 and true", 
  //default의 경우 _ 로 표현한다.
  _ => "no match"
};

void forLooper(){
  final List<Map<String, dynamic>> members = [
    {
      "name" : "빈현",
      "age" : 38
    },
    {
      "name" : "준빈",
      "age" : 33
    }
  ];

  for(final member in members){
    //print(member["name"]);
    //print(member["age"]);
  }

  for(var {"name":name, "age":age} in members){
    print(name);
    print(age);

  }
}

//Loop와 if문에서도 패턴을 매칭 시켜줄 수 있다.
//값을 추출하기 위해서 추가로 변수를 선언하는 등의 작업이 필요없이
//반복문 안에서 미리 매칭을 시켜줄 수 있으며
void ifMatcher(){
  final binHyun = {
    "name" : "빈현",
    "age": 38
  };

  //if문에선 case를 이용해 타입까지도 매칭을 해줄 수 있다.
  if(binHyun case {"name":String name, "age":int age}){
    print(name);
    print(age);
  }
}