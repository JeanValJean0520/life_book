# BlocSelector

BlocSelector은 BlocBuilder와 유사하지만 개발자가 현재 블록 상태를 기반으로 새 값을 선택하여 업데이트를 필터링하는 Flutter Widget이다.
선택한 값이 변걍되지 않으면 불필요한 빌드가 방지된다. BlocSelector가 빌더를 다시 호출해야 되는지 여부를 정확하게 결정하려면 선택한 값이 변경 불가능해야된다.

Bloc 매개변수가 생략되면 BlocSelector는 BlocProvider과 현재 BluidContext를 사용하여 자동으로 조회를 수행한다.

```dart
BlocSelector<BlocA, BlocAState, SelectedState>(
  selector: (state) {
    // return selected state based on the provided state.
  },
  builder: (context, state) {
    // return widget here based on the selected state.
  },
)
```