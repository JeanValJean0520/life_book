// 기본 class 생성 코드
class Math{
  // 데이터 더하기 함수
  // 리턴값 없음
  void add(int dataA, int dataB){
    print((dataA + dataB));
  }

  // 데이터 빼기 함수
  // int 형태의 리턴값 존재
  int miners(int dataA, int dataB){
    return (dataA - dataB);
  }
  
}

void main(){
  // 데이터 상수화
  const dataA = 30;
  const dataB = 23;
  
  var math = Math();
  
  math.add(dataA, dataB);
  
  int calData = math.miners(dataA,dataB);
  
  print(calData);
  
}