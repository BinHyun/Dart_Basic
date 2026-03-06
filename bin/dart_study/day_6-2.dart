void main(){
  //method override
  TimesTwo tt = TimesTwo(2);
  print(tt.calculate());

  TimesFour tf = TimesFour(2);
  print(tf.calculate());
}

class TimesTwo{
  final int number;

  TimesTwo(
    this.number
  );

  //method
  int calculate(){
    return number * 2;
  }
}

class TimesFour extends TimesTwo{
  TimesFour(
    super.number
  );

  //override 를 하기 위해선, @override를 먼저 작성한다.
  //@override
  //int calculate() {
    // TODO: implement calculate
    //부모의 값을 가져오기 위해 super를 붙여준다.
    //super 대신 this, 혹은 생략을 해도 무방하다.
    //return super.number * 4;
  //}

  //부모 클래스에서 생성된 method를 사용하려면 return 뒤에 super를 붙인 뒤, method
  @override
  int calculate() {
    // TODO: implement calculate
    return super.calculate() * 2;
  }
}