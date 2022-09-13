# steam 관리하기
listen 호출은 StreamSubscription을 반환한다.
구독의 가장 일반적인 용도는 더이상 데이터가 필요하지 않을때 구독을 취소하는 것이다.

```dart
StreamSubscription<double> streamSubscription = stream.listen((value) {
  print('Value from controller: $value');
});
```