# provider 생성하기

데이터를 관리할 state를 생성하는 부분으로 두가지 클래스를 제공한다.
* ChangeNotifier
* ChangeNotifierProvider

## ChangeNotifier
리스너에게 변경 알림을 제공한다.
무언가가 ChangeNotifier 타입이면 우리는 그것의 변화들을 구독할 수 있는 Observable과 같은 것으로 앱 상태를 캡슐화 해서 Provider가 사용할 수 있게 한다.

```dart
class CarModel extends ChangeNotifier{
    final List<Item> _item = [];

    UmodifiableListView<Item> get items => UnmodifiableListView(_items);

    int get totalPrice => _items.length * 42;

    void add(Item item){
        _items.add(item);
        notifyListeners();
    }

    void removeAll(){
        _items.clear();
        notifyListeners();
    }
}
```

상태를 저장하는 변수인 items와 이를 변경하는 add(), removeAll()이 있다.
또한 이러한 변경이 이루어질 때 notifyListeners()를 호출해서 ChangeNotifierProvider에게 변경을 알립니다.

## ChangeNotifierProvider
ChangeNotifier의 하위 항목에게 인스턴스를 제공하는 위젯이다.
변경을 알림받을 앱인 MyApp을 래핑하여 사용한다.

void main(){
    runApp(
        ChangeNotifierProvider(
            create: (context) => CartModel(),
            child: const MyApp();
        )
    )
}