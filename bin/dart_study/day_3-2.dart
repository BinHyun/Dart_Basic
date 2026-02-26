enum Status {
  approved, //승인
  pending,  //대기
  rejected  //거절
}

void main(){
  //while문

  int total = 0;
  while(total < 10){
    total+=1;

    if(total == 5){
      break;
    }
  }
  print(total);

  total = 0;

  do{
    total+=1;
  } while(total < 10);
  print(total);

  Status status = Status.pending;

  if(status == Status.approved){
    print("승인 되었습니다.");
  } else if(status == Status.pending){
    print("대기 하세요.");
  } else {
    print("거절 되었습니다.");
  }

}