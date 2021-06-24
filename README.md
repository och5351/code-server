# Code-server

코드 서버는 서버의 자원을 이용하여 VSCode를 이용할 수 있는 서비스이다.
Electron.js 기반 프로그램이라 web browser로 약간의 수정을 통해 web으로 포팅이 가능한 듯

현재 이 Readme.md 작성도 code-server를 통해 수정 하였다.

<a href="https://github.com/cdr/code-server">코드 서버 Github Repo</a>
<span>개인적으로 Star 한번 박아 주자</span> 

## Install Spec 

 - Ubuntu 20.04
 - Nginx
 - Iptime 공유기(?) <- 이건 그냥 넣어 봤다.. iptime 도메인 감사합니다.


## 설치 순서

 - <a href="https://github.com/och5351/code-server/blob/main/code-server.md">코드 서버 설치</a>
 - <a href="https://github.com/och5351/code-server/blob/main/Nginx.md">Nginx 설치</a>

## 장점

 - 일 하는 곳이 보안 상 upload를 못하는 곳에서 매우 유용할 듯 하다. 
 - 통합 Terminal도 열리니 1석 2조
<div align="center">
<img src="https://user-images.githubusercontent.com/45858414/123279746-1b270800-d543-11eb-9af1-f987705cb553.png" width="70%" height="70%"/>
</div>

## 단점

 - 시스템 계정별 Repository 나 자원을 나눌 수 없는 듯 하다.

## 추 후 계획

 - 단점 극복을 위한 Container 화

 ## Theme 설정

<div align="center">
<img src="https://user-images.githubusercontent.com/45858414/123279277-ac49af00-d542-11eb-8fd0-9e29200783e3.png" width="70%" height="70%"/>
</div>