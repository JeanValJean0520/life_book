# Observing Cubit

cubit이 새로운 상태를 방출하면 변화가 일어난다. onChange를 재정의하여 주어진 Cubit에 대한 모든 병경 사항을 관찰할 수 있다.

```dart
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }
}
```
그런 다음 Cubit과 상호 작용하고 콜송에 출력되는 모든 변경 사항을 관찰할 수 있다.

```dart
void main() {
  CounterCubit()
    ..increment()
    ..close();
}
```
Cubit의 상태가 업데이트되기 직전에 변경이 발생한다. Change는 currentState와 nextState로 구성된다.
블록 라이브러리를 사용하여 추가 보너스중 하나는 한 곳에서 모든 변경 사항에 엑세스할 수 있다. 이 응용 프로그램에는 하나의 Cubit만 있지만 더 큰 응용 프로그램에서는 응용 프로그램 상태의 다른 부분ㅇ을 관리하는 많은 Cubit이 있는것이 일반적이다.
모든 변경사항에 대한 응답으로 무언가를 할 수 있기를 원한다면 단순히 BlocObserver을 만들 수 있다.

```dart
class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }
}
```

```dart
void main() {
  BlocOverrides.runZoned(
    () {
      CounterCubit()
        ..increment()
        ..close();
    },
    blocObserver: SimpleBlocObserver(),
  );
}
```