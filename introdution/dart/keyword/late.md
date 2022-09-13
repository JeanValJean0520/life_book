# late keyword
null safety에서 변수 초기화를 지연시키기 위해서 사용한다.
null을 활용하지 않는 코드는 nullable변수를 쓰지 않는게 잠재적인 버그를 발생 시키지 않는다는 점에서 좋다.

```dart
late String _techStack;
```

```dart
class Developer{
  late String _techStack;
  void frontend() => _techStack = "flutter";
  void backend() => _techStack = "Spring";
  void devOps() => _techStack = "aws";
  String introduce() => "I'm using "+_techStack;
}
```
