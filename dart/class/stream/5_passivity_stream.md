# 수동 스트림
일반적으로 스트림을 생성할때는 async 키워드를 사용하여 비동기처리를 한다.
또한 yield 키워드를 사용하여 값을 반환하는데 해당 함수들을 실행을 중지하지 않는다.

```dart
Future<double> getRandomValue() async {
  var random = Random(2);
  await Future.delayed(Duration(seconds: 1));
  return random.nextDouble();
}
```

```dart
Stream<double> getRandomValues() async* {
    var random = Random(2);
while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield random.nextDouble();
    }
  }
```
* 서로를 비교하면 수동은 future가 아닌 Stream을 반환한다는 것이다. 값을 기다리는것이 아닌 구독해야 되는 것이다.
* async 대신에 async* 이다. 이것은 코드가 비동기저긍로 실행되어야 하지만 값을 반환한 후에도 실행이 계속되는 것을 런타임에 알려준다.
* return 대신에 yield 기본적으로 반환 함수지만 함수를 종료하지는 않는다. 대신 양보 이후 나머지 코드가 실행된다.