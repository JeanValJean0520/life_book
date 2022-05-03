# 스트림 취소
스트림 취소는 언제든지 할 수 있다.
스트림은 일반적으로 streambuild 위젯이 끝나면 자동으로 취소된다.
따라야 할 좋은 규칙은 스트림을 구독 할 때 구독을 유지하고 dispose 메서드에 코드를 작성하여 cancel을 호출하는 것이다.

```dart
streamSubscription.cancel();
```

* 단독 구독 스트림
* 브로드 캐스트 스트림

