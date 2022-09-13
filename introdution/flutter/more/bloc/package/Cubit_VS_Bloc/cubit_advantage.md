# cubit advantage

cubit을 사용하는 이유는 간단하다는 이유이다. cubit을 사용할때는 상태와 상태변화를 위한 기능만 정의하면 된다.
하지만 Bloc은 상태와 이벤트 그리고 EventHandler 구현 정의를 해야된다. 

## count Cubuit
```dart
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
}
```

## count Bloc
```dart
abstract class CounterEvent {}
class CounterIncrementPressed extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) => emit(state + 1));
  }
```
Cubit 구현은 보다 간결하며 이벤트를 별도로 정의하는 대신 함수가 이벤트처럼 작동한다. 또한 Cubit을 사용할 때 상태 변경을 트리거하기 위해 간단히 emit을 호출할 수 있다.