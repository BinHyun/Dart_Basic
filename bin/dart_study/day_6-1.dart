void main(){
  //inheritance (상속)
  //부모 클래스의 모든 속성을 자식 클래스에게

  Idol apink = Idol(name: "에이핑크", membersCount: 5, male: "여");
  apink.sayName();
  apink.sayMembersCount();
  apink.sayMale();
  
  BoyGroup bts = BoyGroup("BTS", 7, "남");
  bts.sayName();
  bts.sayMembersCount();
  bts.sayMale();
}

class Idol {
  String name;
  int membersCount;
  String male;

  Idol({
    required this.name,
    required this.membersCount,
    required this.male
  });

  void sayName(){
    print("저희는 $name 입니다.");
  }

  void sayMembersCount(){
    print("$name 은 $membersCount 명의 멤버가 있습니다.");
  }

  void sayMale(){
    print("저희는 $male자 아이돌 입니다.");
  }
 }

 //상속을 받으려는 클래스의 명을 extends 뒤에 붙여 준다.
 //부모의 클래스 내에 Construct가 있으며 required 키워드로 지정이 되어 있음
 //그렇기 때문에 super 키워드를 붙여 아래와 같이 받아준다.
 class BoyGroup extends Idol{
  BoyGroup(
    String name,
    int membersCount,
    String male
  ) : super (
      name: name,
      membersCount: membersCount,
      male: male
  );

  //void sayMale(){
  //  print("저희는 남자 아이돌 입니다.");
  //}
 }

 class GirlGroup extends Idol{
  GirlGroup(
    String name,
    int membersCount,
    String male
  ) : super (
      name: name,
      membersCount: membersCount,
      male: male
  );
  }