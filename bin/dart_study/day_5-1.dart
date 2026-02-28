void main(){
  //class
  //자바의 경우 클래스를 선언 한 뒤 new 키워드를 추가하나 다트는 추가하지 않음
  Idol blackpink = Idol(
    "블랙핑크",
    ["지수", "제니", "리사", "로제"]
  );

  blackpink.sayHello();
  blackpink.introduce();

  Idol bts = Idol(
    "BTS",
    ["RM", "진", "슈가", "제이홉", "지민", "뷔", "정국"]
  );

  bts.sayHello();
  bts.introduce();

}

//class 선언
//name - 변수
//members - 변수
//sayHello - 함수
//introduce - 함수
class Idol {
  //immutable 프로그래밍
  //중간에 변수의 값을 바꾸지 못하게 처리
  final String name;
  final List<String> members;

  //Construct를 생성 후 인자를 설정 한 뒤 this키워드를 붙여 준다.
  //그렇게 되면 위 코드 처럼 인자를 받아서 별도의 과정이 필요없이 사용이 가능하다.
  
  //Idol(String name, List<String> members) 
  //  : this.name = name,
  //   this.members = members;

  //아래 방법처럼 더 간단하게도 가능하다.
  Idol(this.name, this.members);

  void sayHello(){
    print("안녕하세요. 저희는 $name 입니다.");
  }

  void introduce(){
    print("저희는 $members 로 구성되어 있습니다.");
  }
}