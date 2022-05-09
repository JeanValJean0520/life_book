# Widget VS Helper Method

Flutter같은 경우에는 모든것이 위젯으로 이루어져있다. 그렇기 때문에 ui를 구현할때 위젯이 다른 위젯을 감싸는것을 자주 접한다.
이러한 구조가 계속되다보면 구조가 됭장히 복잡해지고 반복적으로 사용되는 위젯들이 생긴다. 이러한 문제점들을 해결하기 위한 방법으로 2가지가 있다.


## helper method
Helper Method방법같은 경우에는 같은 위젯 클래스 안에 메소드를 활용하는 방법이다. 
```dart
Widget build(BuildContext context){
    return Column(
        children: [
            _customWidget(1),
            _customWidget(2),
            _customWidget(3),
        ]
    );
}

 Widget _customWidget(int num){
     return Card(
         child: ListTile(
             title: Text('$num')
         )
     );
 }
```

위와같이 사용하는 방식이 helper method이다.

## widget

새로운 위젯을 만드는 방법이다.
```dart
Widget build(BuildContext context){
    return Column(
        children: [
            CustomWidget(num : 1),
            CustomWidget(num : 2),
            CustomWidget(num : 3),
        ]
    );
}

class CustomWidget extends StatelessWidget{
    const CustomWidget({
        Key? jey,
        required this.num,
    }) : super(key: key);
    
    final int num;

    @override
    Widget build(BuildContext context){
        return Card(
            child: ListTile(
                title: Text($num)
            )
        );
    }   
}
```

## 결론
지금까지 둘이 서로 어떻게 다른지에 대해서 알아봤다 그렇다면 둘 중 어느것을 사용하는것이 좋을까? 대부분의 경우에는 위젯을 따로 나누는 쪽이 더 좋다.

## 왜why?

1. 불필요한 재빌드
예를들어 좋아요, 그림, 글 이렇게 3가지의 요소가 들어가있는 위젯이 있을때 사용자가 좋아요를 누르면 setState()를 호출할 것이다. 여기서 중요한것은 setState()를 호출하면 해당 위젯의 build()메소드가 재실행 되어서 굳이 사용하지 않아도 되는 그림, 글이 담긴 커다란 위젯들이 전부 다 재빌드된다.
결국 필요하지 않은 재빌드 때문에 앱의 성능저하를 발생시킨다.

2. 테스트 효율
하트 위젯을 따로 갖고와서 작업할 수 있지만 헬퍼를 사용하면 하트뿐만이 아닌 그림, 글 위젯까지 사용해야돼서 테스트 속도와 효율이 떨어진다.

3. Buildcontext 에러 방지
Build위젯을 사용하는 경우가 있는데 이때 Builder위젯 내에서는 Builder위젯 밖에있는 BuilderContext를 사용하지 않도록 주의해야 된다.