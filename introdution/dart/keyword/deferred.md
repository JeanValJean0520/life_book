# deferred keyword
라이브러리를 느리게 갖고올때 사용된다.

앱의 실행 속도를 향상시키는데 매우 용의하다
앱에서 보다 적게사용되는 옵션 스크린같은 위젯들을 조금 늦게 불러옴으로 앱의 실행 속도를 올림

import 부분뒤에 deferred를 붙이면 된다

당연한 것이지만 잘못 사용하면 앱의 속도를 늦추는 결과를 갖고온다

```dart
import 'pakage:greeting/hello.dart' deferred as hello;
Future greet() async{
	await hello.loadLibrary();
	hello.printGreeting();
}
```