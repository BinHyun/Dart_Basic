void main(){
  BoyGroup bts = BoyGroup("BTS");
  GirlGroup redVelvet = GirlGroup("레드벨벳");

  bts.sayName();
  
}
//상속의 경우 특성과 내용을 물려주기 위함
//인터페이스의 경우 인터페이스 내 시그니쳐를 강제함

//abstract(추상화) 키워드를 쓰게 된다면 interface를 실수로 인스턴스화 하는 것을 막을 수 있다.

//interface
 abstract class IdolInterface{
  String name;

  IdolInterface(
    this.name
  );

  //abstract 키워드 사용시 함수를 선언할 때 {}를 쓰지 않아도 된다. 왜냐하면 인터페이스는 구조만 잡는 것이라
  void sayName();
  //void sayName(){}
}

//interface를 사용하기 위해선 implements 키워드를 사용
class BoyGroup implements IdolInterface{
  @override
  String name;

  BoyGroup(
    this.name
  );
  @override
  void sayName(){
    print("저의 이름은 $name 입니다.");
  }
}

class GirlGroup implements IdolInterface{
  @override
  String name;

  GirlGroup(
    this.name
  );
  @override
  void sayName(){
    print("저의 이름은 $name 입니다.");
  }
}