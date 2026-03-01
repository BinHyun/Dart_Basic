void main(){
  //static
  Employee seulgi = Employee("슬기");
  Employee chorong = Employee("초롱");

  Employee.building = "동부빌딩";

  seulgi.printNameAndBuilding();

  Employee.printBuilding();

}

class Employee {
  //static은 instance에 귀속되지 않고 class에 귀속된다.
  static String? building;
  final String name;

  Employee(
    this.name
  );

  void printNameAndBuilding(){
    print("저의 이름은 $name 입니다. 저는 $building 건물에서 근무하고 있습니다.");
  }

  static void printBuilding(){
    print("저는 $building 건물에서 근무 중 입니다.");
  }
}