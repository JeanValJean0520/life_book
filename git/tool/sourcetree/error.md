# sourcetree를 사용하는동안 접했던 모든 오류들


## github push 403 error

에러 내용 : 
    깃허브 push중 403에러가 발생하였었다.

에러 환경 : 
    macOS M1 

에러 원인 : 
    2021년 10월쯔음 깃허브가 외부 프로그램을 사용하기 위해서 토큰설정을 해야되는 업데이트를 진행하였다. 그로인해 sourcetree에서 토큰을 설정하지 않았기 때문에 403에러가 발생하였다.

해결 방법 : 
    github => setting => developer setting => Personal acess token에서 sourcetree 권한에 대한 토큰을 생성해준다.

오류를 해결하기 위해서 시도했던 것들 :
    sorcetree 재설치 
    macOS keychain 재설정
    혹시 계정이 변하여 발생한 오류일지도 모른다는 생각에 기존에 사용하던 계정으로 변경
    git config 변경
    sourcetree 원격 저장소 주소 변경
    sorcetree 통신방법 변경 (http,ssh)
    git bash를 사용한 푸쉬(여기에서도 403 에러 방생)

힘들었던것 :
    사람마다 비슷한 오류 때문에 다양한 오류 해결방법을 전부 다 시도해 보느라 많은 시간이 소모되었던것이 힘들었다.