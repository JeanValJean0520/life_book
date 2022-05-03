# MultiRepositoryProvider

MultiRepositoryProvider는 여러 RepositoryProvider 위젯을 하나로 병합하는 Flutter 위젯입니다. MultiRepositoryProvider는 가독성을 높이고 여러 RepositoryProvider를 중첩할 필요가 없습니다. MultiRepositoryProvider를 사용하여 다음에서 이동할 수 있습니다.

```dart
RepositoryProvider<RepositoryA>(
  create: (context) => RepositoryA(),
  child: RepositoryProvider<RepositoryB>(
    create: (context) => RepositoryB(),
    child: RepositoryProvider<RepositoryC>(
      create: (context) => RepositoryC(),
      child: ChildA(),
    )
  )
)
```
to
```dart
MultiRepositoryProvider(
  providers: [
    RepositoryProvider<RepositoryA>(
      create: (context) => RepositoryA(),
    ),
    RepositoryProvider<RepositoryB>(
      create: (context) => RepositoryB(),
    ),
    RepositoryProvider<RepositoryC>(
      create: (context) => RepositoryC(),
    ),
  ],
  child: ChildA(),
)
```
