# BlocBuilder

BlocBuilder은 Bloc과 빌더 기등이 필요한 Flutter 위젯이다. BlocBuilder는 새 상태에 대한 응답으로 위젯 빌드를 처리한다. BlocBuilder는 StreamBuilder와 매우 유사하지만 필요한 사용구코드의 양을 줄이기 위한 더 간단한 API가 있다. 빌더 함수는 잠재적으로 여러번 호출될 것이며 상태에 대한 응답으로 위젯을 반환하는 순수 함수여야한다.

Bloc 매개변수가 생략되면 blockBuilder은 BlocProvider과 현재 BluiderContext를 사용하여 자동으로 조회한다.

```dart
BlocBuilder<BlocA, BlocAState>(
  builder: (context, state) {
    // return widget here based on BlocA's state
  }
)
```
```dart
BlocBuilder<BlocA, BlocAState>(
  bloc: blocA, // provide the local bloc instance
  builder: (context, state) {
    // return widget here based on BlocA's state
  }
)
```

단일 위젯으로 범위가 지정되고 상위 BlocProvider 및 현재 BuildContext를 통해 엑세스할 수 없는 블록을 제공하려는 경우에만 Bloc을 지정한다.

builder 함수가 선택적으로 호출되는 시점에 대한 세분화된 제어를 위한 buildWhen을 제공받는다. buildWhen은 이전 Bloc상태와 현재 Bloc상태를 가져와서 사용한 값을 변환한다. buildWhen이 true를 반환하면 상태와 함께 builder가 호출되고 위젯이 다시 빌드된다. buildWhen이 flase를 반환하면 빌더가 상태를 호출하지 않고 다시 빌드가 발생하지 않는다.

```dart
BlocBuilder<BlocA, BlocAState>(
  buildWhen: (previousState, state) {
    // return true/false to determine whether or not
    // to rebuild the widget with state
  },
  builder: (context, state) {
    // return widget here based on BlocA's state
  }
)
```


새로운 state를 받았을 때 builder을 호출하여 위젯을 변경함

StreamBuilder, FutureBuild와 유사함

```dart
BlocBuilder<BlocA, BlocAState>(
  builder: (context, state) {
    // return widget here based on BlocA's state
  }
)
```

buildWhen 속성을 사용하여 이전 Bloc의 상태와 현재 Bloc의 상태를 갖고올 수 있고 Bool 값을 리턴하는데 false를 리턴하면 builder을 호출하지 않는다.

```dart
BlocBuilder<BlocA, BlocAState>(
  buildWhen: (previous, current) {
    // return true/false to determine whether or not
    // to rebuild the widget with state
  },
  builder: (context, state) {
    // return widget here based on BlocA's state
  }
)
```
