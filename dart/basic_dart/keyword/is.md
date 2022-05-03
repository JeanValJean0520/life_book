# is keyword
is 키워드는 타입의 참과 거짓을 나타내는 키워드이다.

```dart
if( a is int){
    print('a is int it value is $a');
  }
  else{
    print('no');
  }
```
타입이 맞다면 true를 반환하고 틀린다면 false를 반환한다.

```dart
main(){
  int a = 20;
  if( a is int){
    print('a is int it value is $a');
  }
  else{
    print('no');
  }
}
```