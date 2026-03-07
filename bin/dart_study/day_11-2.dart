void main() {
  
}
//클래스를 final로 선언을 하게된다면
//extends, implement 또는 mixin으로 사용이 불가하다.
//하지만 같은 파일에서만 가능하다.

final class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age
  });
}

//클래스를 base 선언을 하게된다면
//extend는 가능하지만 implement는 불가하다.
//base, sealed, final로 선언된 클래스만 extend가 가능하다.
base class Person2 {
  final String name;
  final int age;

  Person2({
    required this.name,
    required this.age
  });
}

//클래스를 interface로 선언을 하게된다면
//implement만 가능하다.
interface class Person3 {
  final String name;
  final int age;

  Person3({
    required this.name,
    required this.age
  });
}
//클래스를 sealed 선언을 하게된다면
//abstract 이면서 final이다.
//패턴 매칭이 가능해진다.
sealed class Person4 {
  final String name;
  final int age;

  Person4({
    required this.name,
    required this.age
  });
}

