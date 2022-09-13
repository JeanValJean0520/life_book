# cubit_state_change

각 cubit들은 방출을 통해서 새로운 상태를 출력할 수 있다.

```dart
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
}
```
위에 코드는 외부에서 호출하여 CounterCubit에게 상태를 증가시키도록 알릴 수 있게 해주는 increament라는 공개 메서드를 노출하고 있다. increament가 호출되면 상태 getter를 통해 Cubit의 현재 상태에 엑세스하고 현재 상태에서 1을 추가하여 새 상태를 방출한다.