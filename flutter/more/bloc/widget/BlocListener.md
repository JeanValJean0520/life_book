# BolcListener

해당 Bloc의 state가 변경될 때 호출되는 위젯이다.
BlocBuild와 마찬가지로 listenWhen으로 제어가 가능하다.

BlocBuild와의 차이점은 Bloc의 State가 변경 되었을때 한번만 필요하는 경우를 위해 존재함 페이지 라우팅이나 알림

```dart
BlocListener<BlocA, BlocAState>(
  listenWhen: (previous, current) {
    // return true/false to determine whether or not
    // to call listener with state
  },
  listener: (context, state) {
    // do stuff here based on BlocA's state
  }
  child: Container(),
)
```