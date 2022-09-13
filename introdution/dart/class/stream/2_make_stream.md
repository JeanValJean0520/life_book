# 스트림을 만드는 방법
값을 입력할 수 있는 스트림을 만들려면 StreamController로 시작하여야 한다.

```dart
StreamController<double> controller = StreamController<double>();
Stream stream = controll.stream;
```

steam 값을 받아오는 것을 구독 또는 청취라고 한다. 스트리밍을 구독하면 구독 이후의 데이터만을 받게 된다.
listen함수를 호출하고 일반적으로 콜백 함수 또는 단순히 콜백이라고하는 사용 가능한 새 값이있을 때 콜백 할 함수를 제공 하여 스트림을 구독한다.

```dart
stream.listen((value) {
  print('Value from controller: $value');
});
```
스트림에 대한 구독이 있다면 어딘가에서는 실행되기를 기다리는 함수가 있다.
```dart
controller.add(12);
```