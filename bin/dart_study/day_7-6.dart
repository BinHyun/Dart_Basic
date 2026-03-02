void main(){
  List<int> numbers = [1, 3, 5, 7, 9];

  //reduce는 Map과 비슷해보이나, 파라미터는 2개를 받는다.
  final result = numbers.reduce((prev, next){
    print("---------------------------");
    print("previous : $prev");
    print("next : $next");
    print("total : ${prev + next}");

    //처음 실행 시, prev는 1, next는 3이다.
    //하지만 그 다음 부턴 prev엔 totla의 값이 들어간다.
    return prev + next;
  });

  print(result);

  List<String> words = ["안녕", "나는", "빈현 이다."];

  final sentence = words.reduce((x, y) => "$x $y");
  print(sentence);

  //아래 코드는 작동하지 않는다.
  //reduce를 적용하는 words의 경우 String List 이나 지금 반환 하려는 값은 int 이기 때문
  //words.reduce((x, y) => x.length + y.length);

}