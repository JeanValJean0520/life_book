# Flutter란 무엇인가?

Flutter는 구글에서 개발한 크로스 플랫폼 모바일 앱 개발 프레임워크이다.

Flutter는 React Native와 마찬가지로 반응형 스타일을 지원한다. 하지만 React Native와 가른점은 Javascript가 아닌 dart를 사용하기 때문에 동작 과정에서 브릿지를 사용하지 않는다. dart는 브질지 대신 AOT(ahead of time)를 여러 플랫폼의 기본 코드로 컴파일 하기 때문이다. 이로 인하여 네이티브 코드로 컴파일 하면 앱 시작 시간이 향상된다.

또한 Flutter는 플랫폼 위젯(Dom webviews)를 사용하지 않고 자체 위젯을 지원합니다.

<img width="676" alt="image" src="https://user-images.githubusercontent.com/103889569/166392215-7bbc7a02-1482-468f-afe8-865cdea200c4.png">

### 랜더링
Flutter는 플랫폼에서 위젯으로 위젯과 렌더러를 앱으로 갖고와서 커스터마이징 가능하고 확장 가능하다. Flutter가 플랫폼에 요구하는것은 위젯을 장치 화면에 표시하고 이벤트(터치, 타이머) 및 서비스(위치, 카메라)에 엑세스 할 수 있도록 위젯을 렌더링하는 캔버스다

### 데이터 access
데이터 인코딩 밎 디코딩을 수행하는 dart프로그램과 기본 플랫폼 코드사이에는 여전히 인터페이스가 있지만 Jvascript 브릿지보다는 훨씬 빠르다.

<img width="866" alt="image" src="https://user-images.githubusercontent.com/103889569/166396574-4588491e-326f-480f-9370-786aa5be5f3b.png">

Flutter 렌더링이 앱의 일부라는 것과 개별 앱의경우 원하는것을 거의 모든것을 사용자가 정의할 수 있다.

### 반응형 뷰의 장점
반응형 웹 뷰용 라이브러리에는 가상DOM이 도입되어 있다. DOM은 HTML 문서 겍체 모델로 HTML 트리를 조작하기 위해 JS에서 사용되는 API이며  요소트리로 표시하게 된다. 가상 DOM은 프로그래밍언어의 객체를 사용하여 생성된 DOM의 추상 버전이다.

<img width="705" alt="image" src="https://user-images.githubusercontent.com/103889569/166397516-c9ed1445-4e9d-4a33-83c4-df441f723a7e.png">

React Navite는 비슷한 기능을 수행하지만 앱에서 만큼은 다르다.
DOM대신 모바일 플랫폼에서 기본 위젯을 조작한다. 가상 DOM 대신 가상 위젯 트리를 빌드하고 이를 원시 위젯과 비교하고 변경된 위젯만 업데이트한다.

<img width="705" alt="image" src="https://user-images.githubusercontent.com/103889569/166397688-f01f65d7-e7b7-416b-b2a5-97554e79c483.png">

React Native는 브리지를 통래 기본 위젯과 통신해야 되므로 가상 위젝 트리는 브리지를 최소한으로 유지하면서 기본 위젯을 계속 사용할 수 있도록 한다. 마지막으로 기본 위젯이 업데이트되면 플랫폼이 위젯을 컨버스로 렌더링한다.

Flutter는 React Native의 우수한점을 조금 더 크게 발전시켰다.

<img width="408" alt="image" src="https://user-images.githubusercontent.com/103889569/166398835-f28f3418-6607-4bbc-9865-3a187c43e487.png">

Flutter에서 위젯과 랜더러는 플랫폼에서 사용자의 앱으로 올려졌다. Flutter는 위젯 트리를 렌더링하여 플랫폼 캔버스에 페인트한다.

Flutter는 랜더러 자체는 여러 내부 트리 구조를 사용하여 화면에서 업데이트해야하는 위젯 만 렌더링한다. (속도적인 부분에서 매우 좋음)

### 핫 리로드
Flutter 앱이 실행되는 동안 변경할 수 있다. 기존에는 변경된 앱이 오류가 발생하거나 코드를 변경하여 변경사항을 보기 위해서는 변경된 앱을 다시 빌드 시켜야 되지만 Flutter같은 경우에는 변경된 코드를 다시로드하고 중단된 지점부터 1초 이내에 계속 진행할 수 있게 해준다. 생산에 있어서 거침없이 사용할 수 있다.

### 호완성
Flutter의 위젯은 플랫폼이 아닌 앱의 일부이기 때문에 compat 라이브러리가 필요하지 않다. 앱이 작동할 뿐만이 아닌 최신 OS버젼에서도 동일하게 작동한다. 따라서 이전 OS버전에서 앱을 테스트할 필요성이 크게 줄어든다.

기존 플랫폼의 위젯을 사용하지 않기 때문에 새로운 종류의 위젯을 지원하는 새로운 버전이 출시되어도 위젯이 업데이트 되는데 오랜 시간이 거릴수도 있다.