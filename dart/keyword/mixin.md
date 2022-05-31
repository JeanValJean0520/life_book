# mixin keyword
클래스에 한번에 여러개를 상속받을 수 있다.

extends 받은 뒤에 with를 사용하여 상속받고
class 키워드 대신 mixin 키워드를 사용한다.

```dart
mixin CanEat{
    void eat(){
        print("eat");
    }
}
```

```dart
mixin CanEat{
  void eat(){
    print("Eatting");
  }
}

mixin CanSleep{
  void sleep(){
    print("Sleeping");
  }
}

mixin CanPlayOverWatch{
  void play(){
    print("Playing OverWatch");
  }
}

class JungHwanWithCorona{
  
}

class JungHwan extends JungHwanWithCorona with CanEat,CanSleep,CanPlayOverWatch{
  @override
  void play(){
    eat();
    sleep();
    play();
  }
}
```