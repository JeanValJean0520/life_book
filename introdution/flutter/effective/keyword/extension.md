# extension Method

보통 String '5'를 int 5로 바꾸기 위해서는 어떻게 할까?
```dart
 int.parse('5');
```

위에 코드처럼 작성할 수도 있지만 extension method를 사용하여 호출하도록 만들 수 있다.

```dart
extension NumberParsing on String{
    int parseInt(){
        return int.parse(this);
    }
}
```
이 코드는 String타입에 대한 NumberParsing이라는 extension을 만들었고 그 안에 parseInt()라는 int.parse(this)를 호출하는 Extension method를 구현하였다.

아래 코드는 int.parse('5');와 같은 기능을 한다.
```dart
    '5'.parseInt();
```

## 그렇다면 extension method는 언제 사용할까?

extension method는 특정 타입에 대하ㅐ 메소드를 만들어 주기 때문에 해당 타입에서 자주 호출하게 될 메소드가 있을 때 이를 extension method로 만들면 좋다.

```dart
extension MyListExtension on List<int>{
    int sum() => fold(0,(int a, int b) => a +b);
}

List<int> nums = [1,2,3,4,5,6,7,8,9,10];
print(num.sum()); 
```
위에 코드처럼 해두면 리스트마다 .fold(0,(int a, intb) => a +b);를 호출하지 않고 아래처럼 .sum()만 호출하면 된다.

또한 외부 패키지에서 만들어진 클래스를 사용할때 extension method를 유용하게 사용할 수 있다.외부 패키지의 클래스에 메소드를 추가하고 싶어도 해당 클래스를 직접 수정할 수 없기 때문에 난감할때가 있다 이때 extension method를 사용하면 해당 패키지이 코드를 수정하지 않고도 용도에 맞는 메소드를 추가할 수 있다.

extension 구조

```dart
    extension <extension name> on <type>{
        (<memver definition>)*
    }
```