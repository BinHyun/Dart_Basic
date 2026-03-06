void main() {
  
  //아래와 같은 예이 Record가 선언이 되었다면
  final reult = ("빈현", 38);
  
  //사용하기 위해선 아래와 같이 다시에 할당 하여야 한다.
  //final name = reult.$1;
  //final age = reult.$2;

  //하지만 아래와 같이 아예 1:1로 맞춰서 선언이 가능하다. (Destructuring - 구조분해)
  final (name1,age1) = ("준빈", 33);

  print(name1);
  print(age1);

  //Record 뿐만 아니라 다른 곳에서도 적용이 가능하다.
  final family = ["빈현", "준빈", "춘복"];

  //이렇게 타입도 넣어줄 수 있다.
  final [String a, String b, String c] = family;

  print(c);

  //아래와 같이 numbers는 8개 이나, 3개만 매칭을 해서 가져오려고 한다면
  //예를 들면 x = 1, y = 2, z = 8과 같이 하려면
  final numbers = [1,2,3,4,5,6,7,8];
  
  //...을 넣어준다.
  //... 을 사용하면 값은 버리는 것이며 한 군데에서 밖에 사용을 하지 못한다.
  final [x,y,...,z] = numbers;
  //print(x);
  //print(y);
  //print(z);

  //하지만 이 값을 다시 살릴려면 아래와 같이 한다.
  //... 뒤에 적당한 이름을 붙여 준다.
  final[xx, yy, ...rest, zz] = numbers;

  //print(xx);
  //print(yy);
  //print(rest);
  //print(zz);

  //값을 무시하려면 _ 처리를 해준다.
   final[xxx, _, yyy, ...rest1, zzz, _] = numbers;
   print(xxx);
   print(yyy);
   print(rest1);
   print(zzz);

  //Map에서 구조분해를 사용하려면
  //final binHyun = {"name" : "빈현", age : 38};

  //이런식으로 키 값에 바로 변수를 적용 해줄 수도 있다.
  //final {"name":name2, "age":age2} = binHyun;

  final binHyunPerson = Person(name: "빈현", age: 38); 

  final Person(name:name, age:age) = binHyunPerson;

  print(binHyunPerson.name);
  print(binHyunPerson.age);

}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age
  });
}