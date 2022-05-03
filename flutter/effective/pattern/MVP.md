# MVP

MVP란 Model, View, Presenter을 합친 것이다. MVC패턴과 동일하고 Contoller 대신에 Presenter가 온 것이다.

Presenter : View에서 요청한 정보로 Model을 가공하여 View에 전달해 준다.

동작방식도 Contoller 대신 Presenter 들어온 것이다.

장점:
View와 Model의 의존성이 없다는 것이다. Presenter를 통해서만 데이터를 받기 때문이다.

단점:
View와 Model 사이의 의존성은 해결되었지만 View와 Presenter의 의존성이 높다.