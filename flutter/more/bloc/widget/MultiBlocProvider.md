# MultiBlocProvider

여러개의 BlocProvider 위젯을 하나로 병합하는 위젯이다.
하위 위젯에 여러 Bloc을 동시에 제공하고자 할 때 사용한다.

RxDart로 구현한 경우 한 위젯에 여러개의 Bloc을 사용할 때
SteamBuild 안에 StreamBuild를 구현하지 않는것이 좋지만 구현하게 될 때
RxDart의 CombinelatesStream 클래스로 Stream을 병합하여 사용하는등
번거로운 작업이 필요할 때 사용한다.

```dart
MultiBlocProvider(
  providers: [
    BlocProvider<BlocA>(
      create: (BuildContext context) => BlocA(),
    ),
    BlocProvider<BlocB>(
      create: (BuildContext context) => BlocB(),
    ),
    BlocProvider<BlocC>(
      create: (BuildContext context) => BlocC(),
    ),
  ],
  child: ChildA(),
)
```