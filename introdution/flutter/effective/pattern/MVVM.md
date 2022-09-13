# MVVM Pattern

View Model : View를 표현하기 위해 만든 View를 위한 Model이다. 

동작 방식

사용자의 Action들은 View를 통해 들어온다.
View에 Action이 들어오면, Command 패턴으로 View Model에 Action을 전달한다.
View Model은 Model에게 데이터를 요청한다.
Model은 View Model에게 요청받은 데이터를 응답한다.
View Model은 응답 받은 데이터를 가공하여 저장한다.
View는 View Model과 Data Binding하여 화면을 나타낸다.

특징

MVVM 패턴의 특징은 Command 패턴과 Data Binding 두 가지 패턴을 사용되어 구현한다.
Command 패턴과 Data Binding을 하용하야 View와 ViewModel의 의존성을 없앴다.
View Model과 View는 1:n 관계이다.

장점 

MVVM 패턴은 View와 Model 사이의 의존성이 없다. 또한 Command 패턴과 Data Binding을 사용하여 View와 ViewModel 사이의 의존성 또한 없앤 디자인 패턴이다. 각각의 부분은 동립적이기 때문에 모듈화 하여 개발한다.

단점

MVVM 패턴의 단점은 View Model의 설계가 쉽지 않다.