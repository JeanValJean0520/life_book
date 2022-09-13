# state change Bloc

Bloc에서는 Cubit의 함수와 달리 on<Event> API를 통해 이벤트 핸들러를 등록해야 한다.
이벤트 핸들러는 들어오는 이벤트를 0개 이상의 나가는 상태로 변환하는 역할을 한다.

```dart
abstract class CounterEvent {}

class CounterIncrementPressed extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) {
      // handle incoming `CounterIncrementPressed` event
    })
  }
}
```
Bloc 클래스는 BlocBase를 확장하므로 Cubit에서와 같이 state getter를 통해 블록의 현재 상태에 언제든지 액세스할 수 있다.