# RespositoryProvider

RepositoryProvider는 RepositoryProvider.of<T>(context)를 통해 자식에게 저장소를 제공하는 Flutter 위젯입니다. 종속성 주입(DI) 위젯으로 사용되어 저장소의 단일 인스턴스가 하위 트리 내의 여러 위젯에 제공될 수 있습니다. BlocProvider는 블록을 제공하는 데 사용해야 하지만 RepositoryProvider는 리포지토리에만 사용해야 합니다.

```dart
RepositoryProvider(
  create: (context) => RepositoryA(),
  child: ChildA(),
);
```
그런 다음 ChildA에서 다음을 사용하여 Repository 인스턴스를 검색할 수 있습니다.

```dart
// with extensions
context.read<RepositoryA>();

// without extensions
RepositoryProvider.of<RepositoryA>(context)
```