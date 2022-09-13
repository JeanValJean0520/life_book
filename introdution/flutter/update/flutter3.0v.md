# flutter

2022년 5월 12일을 기준으로 Flutter 3.0이 배포되었다.

## Desktop
1. 이제 진짜로 모든 플래폼에서 생산할 수 있게 되었다.

2. macOS 상단에 툴바를 설정할 수 있게 되었다.

3. macO에서 intel, appleSilicon 모두를 지원하게 되었다.

4. windows 7/8을 지원하지 않게 되었다. 완전히 중단은 아니지만 더이상 지원하지 않으며 windows 10을 사용하길 권한다.

## Mobile App
5. foldable 기기를 지원하게 된다. 접이식 스마트폰에 반응하는 액션들이 생겼다. 
(MediaQuery에는 경첩, 접기 및 컷아웃과 같은 장치 요소의 경계 및 상태를 설명하는 DisplayFeature 목록이 포함된다. 또한 DisplayFeatureSubScreen 위젯은 이제 DisplayFeatures의 경계를 겹치지 않고 자식 위젯을 배치하고 프레임워크의 기본 대화 상자 및 팝업과 이미 통합되어 Flutter가 이러한 요소를 즉시 인식하고 응답할 수 있도록 한다.)

6. iOS13 pro와 같은 promotion 디스플레이가 있는 iOS에서 가변 재생을을 지원한다. 기존에는 60hz였지만 120hz로 재생시킬 수 있다.

7. iOS배포가 간소화 되었다. 
flutter build ipa 명령어에 새로운 기능들을 추가하였다.

(TestFlight 또는 App Store에 배포할 준비가 되면 flutter build ipa를 실행하여 Xcode 아카이브(.xcarchive 파일)와 앱 번들(.ipa 파일)을 빌드하세요. 선택적으로 —-export-method ad-hoc, —-export-method development 또는 —-export-method enterprise를 추가할 수 있습니다. 앱 번들이 빌드되면 Apple Transport macOS 앱을 통해 또는 xcrun altool을 사용하여 명령줄에서 Apple에 업로드합니다(App Store Connect API 키 인증 지침에 대해 man altool 실행). 업로드 후 앱을 TestFlight 또는 App Store에 출시할 수 있습니다. 표시 이름 및 앱 아이콘과 같은 초기 Xcode 프로젝트 설정을 지정한 후에는 더 이상 앱을 출시하기 위해 Xcode를 열 필요가 없습니다.)

라고 한다.
8. gradle 버젼 업데이트

9. iOS/iOS9/iOS10버젼에서 32비트 앱에대한 지원이 종료된다.

## web Upadate
10. image decorder api를 자동으로 감지하고 사용한다.

(새 API는 브라우저의 내장 이미지 코덱을 사용하여 기본 스레드에서 비동기식으로 이미지를 디코딩합니다. 이렇게 하면 이미지 디코딩 속도가 2배 빨라지고 메인 스레드를 차단하지 않으므로 이전에 이미지로 인해 발생했던 버벅거림이 모두 제거됩니다.)

11. web lifecycle

(Flutter 웹 앱을 위한 새로운 라이프사이클 API는 호스팅 HTML 페이지에서 Flutter 앱의 부트스트랩 프로세스를 제어할 수 있는 유연성을 제공하고 Lighthouse가 앱의 성능을 분석하는 데 도움이 됩니다. 이는 다음과 같은 자주 요청되는 시나리오를 포함하여 많은 사용 사례에 적용됩니다.)

* spash screen
* loading indicator
* A plain HTML interactive landing page displayed before the Flutter app.

## 그 외

12. 퍼포먼스 개선
* 불투명 애니매이션 개선 
Opacity 위젯에 단일 렌더링 기본 요소만 포함되어 있는 경우 일반적으로 Opacity에서 호출하는 saveLayer 메서드가 생략됩니다
* 벤치마크에서 평균 프레임 빌드 시간이 최대 20% 빨라졌습니다.

13. 추진하는것
팀은 iOS 및 기타 플랫폼에서 초기에 발생하는 버벅거림을 해결하기 위한 솔루션을 개발하기 위해 열심히 노력해 왔습니다. Flutter 3 릴리스에서는 iOS에서 Impeller라는 실험적인 렌더링 백엔드를 미리 볼 수 있습니다. Impeller는 앱이 실행되는 동안 컴파일되지 않도록 엔진 빌드 시 더 작고 단순한 셰이더 세트를 미리 컴파일합니다. 이것은 Flutter에서 버벅거림의 주요 원인이었습니다. 임펠러는 생산 준비가 되지 않았으며 아직 완성되지 않았습니다. 아직 모든 Flutter 기능이 구현된 것은 아니지만, 우리는 진행 상황을 공유하고 있는 Flutter/갤러리 앱의 충실도와 성능에 만족합니다. 특히 갤러리 앱의 전환 애니메이션에서 최악의 프레임은 약 20배 더 빠릅니다.
Impeller는 iOS에서 플래그로 사용할 수 있습니다. 플러터 실행에 --enable-impeller를 전달하거나 Info.plist 파일의 FLTEnableImpeller 플래그를 true로 설정하여 Impeller를 사용해 볼 수 있습니다. Impeller의 개발은 Flutter의 마스터 채널에서 계속되고 있으며 향후 릴리스에서 추가 업데이트를 제공할 수 있기를 바랍니다.

## 막 신나버리는 업데이트
* material 3
* theme extention
* ads
* 2.10v 이후에 사용되지 않던 api들 삭제

(ZoomPageTransitionsBuilder로 교체된 페이지 전환
useDeleteButtonTooltip을 칩의 deleteButtonTooltip메시지로 마이그레이션
ThemeData의 toggleableActiveColor 속성은 더 이상 사용되지 않습니다.)