# MVC pattern

MVC 패턴이란 Model, View, Controller를 합친 말이다.

Model : 어플리캐이션에서 사용되는 데이터와 그 데이터를 처리하는 부분
View : 사용자가 보는 UI
Controller : 사용자의 입력을 받고 처리하는 부분

MVC 동작 순서
1. 사용자의 Action이 Controller에 들어오게 된다.
2. Controller는 사용자의 Action을 확인하고 Model을 업데이트하게 된다.
3. Contoller는 Model을 나타내줄 View들을 선택함
4. View는 Model을 이용하여 화면에 나타내준다.

MVC의 특징은 단순하면서 보편적으로 많이 사용된다는 것이다. 
단점으로는 View와 Model 사이에 의존성이 높다는 것이다. 이 의존성이 높은것이 프로젝트가 커질수록
복잡하고 유지보수 하기 힘들게 만든다.