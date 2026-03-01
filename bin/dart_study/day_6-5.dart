void main(){
  Lecture<int> lecture11 = Lecture(12, "빈현");
  lecture11.printIdType();
  
}

//generic - 타입을 외부에서 받을 때 사용
//클래스 명 뒤에 <> 를 사용한다.
class Lecture<T> {
  final T id;
  final String name;

  Lecture(this.id, this.name);

  void printIdType(){
    print(id.runtimeType);
    print(name.runtimeType);
  }

}