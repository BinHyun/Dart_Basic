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

  //where 키워드는 SQL 쿼리처럼 조건을 줄 수 있다.
  //조건에 해당한다면 true가 반환되면 해당 조건이 true인 것들만 걸러진다.
  final blackPink = people.where((x) => x["group"] == "blackpink");
  print(blackPink);

}