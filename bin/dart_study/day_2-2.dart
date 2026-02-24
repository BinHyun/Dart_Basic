void main(){
  //type 비교

  int number = 100;
  print(number is int);

  String name = '김빈현';
  print(name is String);
  print(name is dynamic);
  print(name is bool);

  print(name is! bool);

  //list (중복 가능)
  List<String> nameList = ['빈현', '준빈', '춘복'];
  List<int> numberList = [1, 2, 3, 4, 5];

  //Map
  //Key / Value
  Map<String, String> dic = {
    'harry': '해리',
    'ron': '론'
  };

  print(dic['harry']);

  dic.addAll({
    'granger' : '헤르미온느'
  });

  print(dic);

  dic['monster'] = '괴물';
  print(dic);

  dic['harry'] = '포터';
  print(dic);

  dic.remove('monster');

  print(dic);

  print('모든 키 값 ==>  ${dic.keys}');
  print('모든 벨류 값 ==> ${dic.values}');

  //set (중복 불가능)
  
  Set<String> setArray = {
    '빈현', '준빈', '춘복', '빈현'
  };

  print(setArray);
  print(setArray.contains('준빈'));


}