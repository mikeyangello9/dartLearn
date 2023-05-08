void main(){
  print("hello world");

  int count =  0;


  for(int i = 1; i < 1000; i++){
    if(i % 3 == 0 || i % 5 == 0){
      count += i;
      
    }
  }
  print(count);

  print(fibonacci(10));
 


}

int fibonacci(int nthTerms){
  int firstTerm = 0;
  int secondTerm = 1;
  int count = 0;
  int evenCount = 0;

  if(nthTerms <= 2){
    print(firstTerm);
    print(secondTerm);
  }
  else{
    for(int i = 0; i < nthTerms; i++){
      int thirdTerm = firstTerm + secondTerm;
      firstTerm = secondTerm;
      secondTerm = thirdTerm;
      count = thirdTerm;

    if(thirdTerm % 2 == 0){
      evenCount += thirdTerm;
    }
    print(evenCount);
    }
  }
  return count;

}



