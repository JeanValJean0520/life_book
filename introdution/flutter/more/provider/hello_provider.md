# provider 이란?

[provider link](https://pub.dev/packages/provider)

앱 개발에 있어서 상태관리는 매우 중요하다 여기서 상태란 위젯이 빌드되는동안 읽을 수 있고 위젯의 생명주기동안 변경할 수 있는것들을 말한다. 보통 사용자와 어플의 상호작용으로 생기는 데이터가 여기에 해당한다.

Flutter 에는 크게 2가지종류의 위젯이 존재한다. 
* 상태를 갖는 stateful Widget
* 상태를 갖지 않는stateless Widget
이렇게 두가지로 나뉘게 된다.

stateful widget은 한 위젯 안에서 데이터가 갖고있는 해당 상태의 변화에 따라 화면에 표시되는 UI를 변경한다.

그렇다면 만약 다른 위젯에서 동일한 데이터가 필요한 경우 어떻게 해야될까?

상태를 공유하는 두 위젯의 공통 부모 위젯을 stateful widget으로 만들고 자식 위젯을 생성할 때 파라미터에 해당 상태를 전달하여 두 위젯 사이에 동일한 상태를 사용할 수 있다.

하지만 상태를 표시하기 위해 불필요한 위젯들이 rebuild 되면 성능 이슈가 나타날 수 있다. provider은 이 문제를 해결하기 위해 개발되었으며 동일한 데이터를 전역으로 다른 위젯들과 공유할 때 사용된다.

provider을 사용할때는 위젯 트리와 상관없이 데이터를 저장할 클래스를 생성하고 해당 데이터를 공유하는 공통 부모 위젯에 provider을 제공하고 데이터를 사용하는곳에 provider의 데이터를 읽어서 사용한다.


## what is provider?

provider은 inheritedWidget을 더 쉽게 사용하고 재사용하기 위해서 만들어졌다. inheritedWidget을 직접 작성하는 것 대신 provider을 사용함으로써 아래와 같은 이점을 갖을 수 있다.

* 리소스의 단순화된 할당/해제
* 지연 로딩(lazy-loading)
* 클래스를 새로 만들때 마다 매번 작성해야 했던 부분을 크게 줄인다.
더 자세한 내용은 [flutter provider](https://pub.dev/documentation/provider/latest/provider/provider-library.html)
