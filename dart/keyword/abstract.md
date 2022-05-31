# abstract keyword
추상 클래스르 만들기 위해서 사용한다.

기존 클래스 앞에 abstract를 붙여서 사용할 수 있다.

추상 클래스는 미완성 클래스이기 때문에 객체를 생성할 수 없다. 하지만 참조형 변수의 타입으로 사용 가능하다
추상 클래스를 사용하기 위해서는 일반 클래스에서 implements 키워드를 사용하여 반드시 추상 메서드를 오버라이딩 시켜야 된다.

다트에서는 추상 클래스에 반드시 추상 메서드만 존재해야 되는것은 아니다. 일반 메서드를 정의할 수도 있고 일반 메서드만 존재할 수도 있다. 물론 일반 메서드도 반드시 implements 하는 클래스에서 재정의 되어야 한다. 

```dart
abstract class Person{
	eat();
}
```