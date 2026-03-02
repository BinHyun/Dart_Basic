void main(){
  List<int> numbers = [1, 3, 5, 7, 9];

  //fold 사용 시 반환되는 타입을 명시해준다.
  //fold의 경우 reduce와의 차이는 첫번째 인자에 첫번째 값이 대입된다는 차이가 있다.
  //그리고 가장 큰 장점읜 reduce의 경우 reduce가 적용되는 타입으로만 반환이 가능하다 fold는 모두 반환이 가능하다.
  final sum = numbers.fold<int>(0, (x, y) => x + y);
  print(sum);
}