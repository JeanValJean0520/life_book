# dart:async

[Future](www.github.com/potato0520/orange/dart/basic/class/future.md), [Stream](www.github.com/potato0520/orange/dart/basic/class/stream.md) 두가지 클래스를 통하여 비동기 프로그래밍을 지원한다.

Future과 Stream은 dart에서 비동기 프로그램의 기본 빌딩 블록이다. async, async*을 통해서 언어에서 직접 지원되며 
dart:core 라이브러리를 통하여 모든 라이브러리에서 사용 가능하다.

사용방법
```dart
import 'dart:async';
```

## classes
클래스 들들들

* Completer<T>
* DeferredLibrary
* EventSink<T>
* Future<T>
* FutureOr<T>
* MultiStreamContoller<T>
* Stream<T>
* StreamConsumer<S>
* StreamContoller<T>
* StreamIterator<T>
* StreamSink<S>
* StreamSubscription<T>
* StreamTransformer<S,T>
* StreamTransformerBase<S,T>
* StreamView<T>
* SynchronousStreamContoller<T>
* Timer
* Zone
* ZoneDelegate
* ZoneSpecification

## Extensions
확장
* FutureExtensions

## Functionㄴ
* runZoned<R>
* runZoneGuarded<R>
* scheduleMicrotask
* unawaited