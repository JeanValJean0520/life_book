# Create Bloc

Bloc을 생성하는 방법은 상태관리 정의와 블록이 처리하는 이벤트를 정의한다는 차이점 빼며는 Cubit을 생성하는 방법과 유사하다.

```dart
abstract class CounterEvent {}

class CounterIncrementPressed extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);
}
```
Cubit 생성과 마찬가지로 super를 통해 슈퍼 클래스에 초기 상태를 지정해야 된다.