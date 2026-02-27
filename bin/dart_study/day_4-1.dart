import 'dart:ffi';

void main(){
  //function
  //positional parameter - 순서가 있는 파라미터
  //optional parameter - 있어도 되고, 없어도 되는 파라미터
  //named parameter - 이름이 있는 파라미터 (순서가 중요하지 않음)
  
  //z의 경우 optional 이여서, 대입하지 않을 경우 기본값인 30이 적용
  //addNumbers(11, 35);

  //addNumbers(10,20,30);

  addNumbers(x: 10, y: 20, z: 30);
  
  int result = calculate(10, 20, 30, add);
  print(result);

}

// 3개의 숫자 (x, y, z)를 더한 뒤 짝/홀 구분
//optional parameter 의 경우 해당 파라미터에 [] 로 감싸준다.
// addNumbers(int x, int y, [int z = 30]){

//   int sum = x+y+z;

//   print(z);

//   if(sum % 2 == 0){
//     print("짝수 입니다.");
//   } else {
//     print("홀수 입니다.");
//   }
// }
//named parameter - 이름이 있는 파라미터 (순서가 중요하지 않음)

//void - 공허 (반환값이 없음)

void addNumbers ({
  required int x,
  required int y,
  //named parameter 에서도 optional하게 할 수 있다.
  //required 키워드를 제거한 뒤 기본 값을 대입 해준다.
  int z = 30
}) {
  int sum = x + y + z;

  if(sum % 2 == 0){
    print("짝수");
  } else {
    print("홀수");
  }
}

//arrow function
  int addNumbers2 (int x,{
    required int y,
    int z = 3
  }) => x+y+z;

//typedef
typedef Operation = int Function(int x, int y, int z);

int add(int x, int y, int z) => x + y + z;

int subtract(int x, int y, int z) => x - y - z;

int calculate(int x, int y, int z, Operation opreation){
  return opreation(x, y, z);
}