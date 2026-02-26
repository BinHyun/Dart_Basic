void main(){
  //if문

  int number = 5;

  // if(number % 3 == 0){
  //   print("나머지가 0 입니다.");
  // } else if(number % 3 == 1) {
  //   print("나머지가 1 입니다.");
  // } else {
  //   print("나머지가 2 입니다.");
  // }
  
  //switch문
  
  // switch (number % 3){
  //   case 0 :
  //     print("나머지가 0 입니다.");
  //     break;
  //   case 1 :
  //     print("나머지가 1 입니다.");
  //     break;
  //   default :
  //     print("나머지가 0 입니다.");
  //     break;
  // }

  //for문

  for(int i=0; i<10; i++){
    print("현재 ==> $i");
  }

  int total = 0;
  List<int> numbers = [1,2,3,4,5,6];

  for(int i=0; i<numbers.length; i++){
    total = total + numbers[i];
    //total += numbers[i];
  }

  print("전체를 더한 값 => $total");

  //for in문
  total = 0;
  for(int number in numbers){
    print(number);
    //total += number;
  }

}