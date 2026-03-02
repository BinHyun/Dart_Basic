void main(){
  List<String> blackPink = ["로제", "리사", "제니", "지수", "제니"];
  
  print(blackPink.asMap());

  //set은 중복을 허용하지 않는다.
  print(blackPink.toSet());

  Map blakPinkMap = blackPink.asMap();
  print(blakPinkMap.keys.toList());
  print(blakPinkMap.values.toList());

  //Set.from은 List를 받아서 Set의 형태로 변환
  Set blackPintSet = Set.from(blackPink);
  


}
