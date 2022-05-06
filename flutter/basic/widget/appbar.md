# appbar

이번에는 appbar 중에서도 customappbar에 대해서 알아볼 것이다.

개발을 하다보면 기본으로 지원해주는 appbar보다는 내가 자쥬 자제로 위젯을 디자인 해야되는 순간이 온다. 그럴때 customAppbar을 만들 것인데 이때 발생하는 문제를 해결하도록 하자.

1. The argument type '[customAppbar name]' can't be assigned to the parameter type 'PreferredSizeWidget?'.

이게 무엇이냐 내가 직접 만든 AppBar에는 높이가 설정되어 있지 않다는 것이다.  그렇다면 어떻게 해결해야 될까? 간단하게 PreferredSizeWidget을 사용하여 높이를 설정해주면 된다. 

나같은 경우에는 stateless, stateful 상황에서 만들었다.

```dart
class PageAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
```

기존 class에 PreferredSizeWidget을 implements 해 주고 @override하여 Size를 받아온다.