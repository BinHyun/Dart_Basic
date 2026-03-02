void main(){
  List<Map<String, String>> people = [
    {
      "name" : "로제",
      "group" : "blackpink"
    },
    {
      "name" : "리사",
      "group" : "blackpink"
    },
    {
      "name" : "제니",
      "group" : "blackpink"
    },
    {
      "name" : "지수",
      "group" : "blackpink"
    },
    {
      "name" : "뷔",
      "group" : "BTS"
    },
    {
      "name" : "RM",
      "group" : "BTS"
    }
  ];

  final parsedPeople = people.map(
    (x) => Person(
      //!를 붙여주는 이유는, 데이터가 있다는 보장을 해준 것
      name: x["name"]!, 
      group: x["group"]!
    )
  ).toList();

  print(parsedPeople);

  for (Person person in parsedPeople){
    print(person.name);
    print(person.group);
  }

  final BTS = parsedPeople.where((x) => x.group == "BTS");
  print(BTS);
}

//List, Map, Json 의 형태를 왜 Class로 변경할까?
//데이터의 구조를 정해 놓고, 함부로 변경하지 못하게 함

class Person{
  final String name;
  final String group;

  Person({
    required this.name,
    required this.group
  });

  @override
  String toString(){
    return "Person(name: $name, group: $group)";
  }


}