void main(){
  Set blackPinkSet = {
    "로제",
    "지수",
    "리사",
    "제니"
  };

  final newSet = blackPinkSet.map((x) => "블랙핑크 $x");
  print(newSet);
}