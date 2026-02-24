void main(){
  //nullable - null이 될수 있다.
  //non-nullable - null이 될수 없다.

  //타입뒤에 ? 를 붙이면 nullable
  String? name = 'Bin Hyun';
  print(name);

  name = null;
  print(name);

  //선언된 변수뒤에 !를 붙이면 null이 될수 없다.
  //print(name!);

  //final
  //final로 선언된 변수는 값 변경이 불가하다.
  final String name2 = 'Jun Bin';

  //const
  //const로 선언된 변수는 값 변경이 불가하다.
  const String name3 = '김춘복';

  //final과 const의 차이
  //final = 빌드 시점의 값을 몰라도 됨
  //const = 빌드 시점의 값을 알고 있어야 함

  //DateTime
  DateTime now = DateTime.now();
  print(now);
  
  //??=
  //nullable인 변수 뒤에 ??= 가 붙고 그 뒤에 다른 값이 있다면,
  //해당 변수의 값이 null 일 경우에 뒤에 값을 대입 한다.

  double? number = 4.0;
  number = null;

  number ??= 5.9;
  print(number);
}