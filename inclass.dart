void main(){
  print("hello world");

  int count =  0;


  for(int i = 1; i < 1000; i++){
    if(i % 3 == 0 || i % 5 == 0){
      count += i;
      
    }
  }
  print(count);

  print(fibonacci(1, 2, 10));
 


}

int fibonacci(int firstTerm, int secondTerm, int nthTimes){
  int count = 0;
  for(int i = 0; i < nthTimes; i++){
    count = firstTerm + secondTerm;
  }
  return count;
}


