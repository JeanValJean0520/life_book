# buildcontext란?

buildcontext를 간단하게 말하면 위젯 트리에서 현제 위젯의 위치를알 수 있는 것이다.

모든 위젯은 자신만의 BuildContext를 가지고 있고, 그것은 StatelessWidget.build or State.build에 의해 반환되는 위젯의 부모가 된다.

BuildContext는 위젯의 정보를 가지고 있는것이며,
build 메소드에 의해 전해지는 context는 부모 위젯까지의 정보만을 가지고 있다.