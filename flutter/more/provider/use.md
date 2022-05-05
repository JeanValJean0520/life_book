# provider 사용하기

* BuildContext.watch<T>()
* BuildContext.read<T>()
* BuildContext.select(Lamda)

## watch
BuildContext.select<T>()

T에 해당하는 (ChangeNotifier Class) Provider 데이터의 변화를 감지해 데이터를 얻고 위젯을 재빌드한다.

notifyListeners()를 통해서 변경 알림이 오면 watch를 포함한 build메서드가 실행된다.

데이터의 변화에 따라 변하는 위젯을 만들 때 사용한다.

## read
BuildContetext.read<T>()
T에 해당하는 provider 데이터를 읽고 사용할 수 있게 한다.
데이터에 접근하지만 변화에 따라 위젯을 재빌드 하지 않는다.
데이터를 변경하는 이벤트를 위해서 사용한다.

## select
BuildContext.select(lamda)

앞서 봤던 watch와 비슷하게 변화를 감지하고 위젯을 재빌드 하지만
select는 해당 속성의 변화만을 감지할 수 있다.

해당 속성이 변해야만 위젯을 재빌드한다.