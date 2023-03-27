void main(){
  print("hello world");

  int count =  0;

  for(int i = 1; i < 10; i++){
    if(i % 3 == 0 || i % 5 == 0){
      count += i;
      // print(count);
    }
    // print(count);
  }
  print(count);
}


