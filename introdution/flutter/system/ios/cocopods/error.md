# cocoapods error

다양한 코코아 포드 오류와 해결방법에 대해서 기술하겠다.

{
    에러 발생 상황 : google map 설정중 오류 발생
    에러 환경 : M1
    에러 원인 : Flutter SDK에서 M1 프로세스에 대한 업데이트를 하지 않은것 같다. (아마도 아니 말고)
    ```
    $sudo arch -x86_64 gem install ffi
    $cd iOS(PWD)
    $Arch -x86_64 pod install
    ```
}