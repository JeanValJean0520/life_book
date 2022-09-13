# Bloc advantage

Bloc 사용의 가장 큰 장점 중 하나는 상태 변경의 순서와 이러한 변경을 촉발한 정확한 원인을 알 수 있다는 것이다. 
애플리케이션 기능에 중요한 상태의 경우 상태 변경 외에 모든 이벤트를 캡처하기 위해 보다 이벤트 중심적인 접근 방식을 사용하는 것이 매우 유용할 수 있다.

```dart
enum AuthenticationState { unknown, authenticated, unauthenticated }
```

응용 프로그램의 상태가 인증됨에서 인증되지 않음으로 변경될 수 있는 이유는 여러가지다. 예를들어 사용자라 로그아웃 버튼을 눌러 로그아웃을 요청했을수도 있고 엑세스 토큰이 취소되어 강제로 로그아웃되었을 수도 있다. Bloc을 사용할 때 어플리캐이션의 상태가 어떻게 틀정 상태에 도달했는지 명확하게 추적할 수 있다.

```dart
Transition {
  currentState: AuthenticationState.authenticated,
  event: LogoutRequested,
  nextState: AuthenticationState.unauthenticated
}
```
```dart
Change {
  currentState: AuthenticationState.authenticated,
  nextState: AuthenticationState.unauthenticated
}

```

Bolc이 Cubit보다 뛰어난 이유는 버퍼, doubleTime, 스로틀 같은 반응 연산자를 활용해야 할 때 이다.
Bloc에는 들어오는 이벤트의 흐름을 제어하고 변환할 수 있는 이벤트 싱크가 있다.
예를들어 실시ㅣ간 검색을 구축하는 경우 속도 제한을 피하고 백엔드의 비용/부하를 줄이기 위해 요청을 백엔드로 디바운스할 것이다.
Bloc을 사용하면 들어오는 이벤트가 Bloc에서 처리되는 방식을 변경하기 위해 사용자 지정 EventTransformer를 제공한다.

```dart
EventTransformer<T> debounce<T>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
}

CounterBloc() : super(0) {
  on<Increment>(
    (event, emit) => emit(state + 1),
    /// Apply the custom `EventTransformer` to the `EventHandler`.
    transformer: debounce(const Duration(milliseconds: 300)),
  );
}
```