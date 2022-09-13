# BlocConsumer

BlocConsumer는 새로운 상태에 반응하기 위해 빌더와 리스너를 노출합니다. BlocConsumer는 중첩된 BlocListener 및 BlocBuilder와 유사하지만 필요한 상용구의 양을 줄입니다. BlocConsumer는 UI를 다시 빌드하고 블록의 상태 변경에 대한 다른 반응을 실행해야 할 때만 사용해야 합니다. BlocConsumer는 필수 BlocWidgetBuilder 및 BlocWidgetListener와 선택적 블록, BlocBuilderCondition 및 BlocListenerCondition을 사용합니다.

bloc 매개변수가 생략되면 BlocConsumer는 BlocProvider와 현재 BuildContext를 사용하여 자동으로 조회를 수행합니다.

```dart
BlocConsumer<BlocA, BlocAState>(
  listener: (context, state) {
    // do stuff here based on BlocA's state
  },
  builder: (context, state) {
    // return widget here based on BlocA's state
  }
)
```

리스너와 빌더가 호출되는 시점을 보다 세부적으로 제어하기 위해 선택적인 listenWhen 및 buildWhen를 구현할 수 있습니다. 각 블록 상태가 변경될 때마다 listenWhen 및 buildWhen가 호출됩니다. 그것들은 각각 이전 상태와 현재 상태를 취하며 빌더 및/또는 리스너 함수가 호출되는지 여부를 결정하는 bool을 반환해야 합니다. BlocConsumer가 초기화되면 이전 상태가 블록의 상태로 초기화됩니다. listenWhen 및 buildWhen는 선택 사항이며 구현되지 않은 경우 기본적으로 true로 설정됩니다.

```dart
BlocConsumer<BlocA, BlocAState>(
  listenWhen: (previous, current) {
    // return true/false to determine whether or not
    // to invoke listener with state
  },
  listener: (context, state) {
    // do stuff here based on BlocA's state
  },
  buildWhen: (previous, current) {
    // return true/false to determine whether or not
    // to rebuild the widget with state
  },
  builder: (context, state) {
    // return widget here based on BlocA's state
  }
)
```