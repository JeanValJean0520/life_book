# using cubit

basic usage
```dart
void main() {
  final cubit = CounterCubit();
  print(cubit.state); // 0
  cubit.increment();
  print(cubit.state); // 1
  cubit.close();
}
```

위의 코드의 인스턴스를 만드느것으로 시작된다. 초기상태인 큐빗의 현재 상태를 인쇄한다(아직 새로운 상태가 방출되지 않았기 때문이다.), 다음으로 증분 함수를 호출하여 상태 변경을 트리거 한다. 마지막으로 0에서 1로 변경된 Cubit의 상태를 다시 인쇄하고 Cubit에서 close를 호출하여 내부 상태 스트림을 닫는다.

stream usage

Cubit은 실시간 상태 업데이트를 수실할 수 있는 Stream을 노출한다

```dart
Future<void> main() async {
  final cubit = CounterCubit();
  final subscription = cubit.stream.listen(print); // 1
  cubit.increment();
  await Future.delayed(Duration.zero);
  await subscription.cancel();
  await cubit.close();
}
```

CounterCubit을 구독하고 각 상태 변경에 대해 print를 호출한다. 새로운 상태를 방출할 증분 함수를 호출한다. 마지막으로 더 이상 업데이트를 수신하고 cubit을 닫고 싶지 않을 때 구독 취소를 호출한다.