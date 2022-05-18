# getx를 사용하지 않으려고 하는 이유

내가 생각하는 GetX를 멀리해야 되는 이유
Getx는 단순하게 취미로 Flutter 앱을 만드는 사람에게 있어서는 훌룡하다고 생각한다. 하지만 Flutter 앱 개발자를 목표로 하고 실서비스를 만들기 위해서는 GetX는 부적절하다. flutter에게 있어서 가장 중요한 주제인 buildcontext를 사용할 수 없도록 내부에서 처리해 버린다. 물론 취미로 앱을 만들거면 상관없지만 최적화된 앱을 만들기 위해서는 buildcontext를 사용해야 된다. 그만큼 builcontext가 Flutter에 있어서 매우 핵심적인 기술이다. 만약 Flutter 앱 개발자를 목표로 한다면  Bloc ,provider 두가지를 공부하는게 맞다고 본다.