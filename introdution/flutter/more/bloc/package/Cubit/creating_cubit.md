# create cubit 

```dart 
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
}
```

Cubit을 생성할 때 Cubit이 관리할 상태 유형을 정의해야 된다. 위에 Counter Cubit의 경우 상태를 int로 표현할 수 있지만 더 복잡한 코드일 경우 기본 유형대신 클래스를 사용해야 될 수도 있다.
Cubit을 생성할 때 두번째로 해야디는 일은 초기 상태를 지정하는 것이다. 초기값을 super로 호출하여 이를 수행할 수 있다. 위의 스니펫에서 내부적으로 초기 상태를 0으로 설정하고 있지만 외부 값을 수락하여 Cubit이 더 유연하도록 할 수 있다.

```dart
class CounterCubit extends Cubit<int> {
  CounterCubit(int initialState) : super(initialState);
}
```

```dart
final cubitA = CounterCubit(0); // state starts at 0
final cubitB = CounterCubit(10); // state starts at 10
```