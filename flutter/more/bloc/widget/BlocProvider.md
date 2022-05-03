# BlocProvider
하위 위젯에 cubit을 제공하는 위젯이다.

## 단일 인스턴스를 하위 여러 위젯에게 제공하기 위해서 사용함

```dart
BlocProvider(
  create: (BuildContext context) => BlocA(),
  child: ChildA(),
);
```

하위 위젯에서 사용하려면 아래와 같이 사용한다.

```dart
coontext.read<BlocA>();
```

provider 외부 위젯은 다음과 같이 사용한다.

```dart
BlocProvider.of<BlocA>(context);
```