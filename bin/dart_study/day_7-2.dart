void main(){
  List<String> blackPink = ["로제", "리사", "제니", "지수"];

  final newBlackPink =  blackPink.map((x){
    return "블랙핑크 $x";
  });

  print(newBlackPink);
  
  final newBlackPink2 =  blackPink.map((x) => "안녕하세요. $x 입니다.");
  print(newBlackPink2);
}