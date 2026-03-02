void main(){
  List<int> even = [2,4,6,8];
  List<int> odd = [1,3,5,7];

  //cascding operator
  //...

  //2개의 리스트가 각각의 리스트에 담겨 출력된다.
  print([even, odd]); //[[2, 4, 6, 8], [1, 3, 5, 7]]

  //하나의 리스트로 합쳐져서 출력된다.
  print([...even, ...odd]); //[2, 4, 6, 8, 1, 3, 5, 7]
}