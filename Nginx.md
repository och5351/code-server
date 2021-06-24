<div align="right"> 
<a href="https://github.com/och5351/code-server/blob/main/README.md"> 메인으로 </a>
</div><br>

## Nginx

Nginx 는 Igor Sysoev라는 러시아 개발자가 만든 동시접속 처리에 특화된 웹 서버 프로그램이라고 한다. Apache보다 동작이 단순하고, 전달자 역할만 하기 때문에 동시접속 처리에 특화되어 있다고 한다.

동시접속자(약 700명) 이상이라면 서버를 증설하거나 Nginx 환경을 권장한다고 한다. 지금은 아파치 시장 점유율이 압도적이라고 하지만 아마존 웹 서비스(AWS) 상에서는 시장 점유율이 44% 달할 정도로 가볍고 성능이 좋은 엔진이라고 한다.

## Nginx 설치

<br><br>

1.<span></span>apt 업데이트 
---

 ```
    $> sudo apt update && sudo apt upgrade
 ```

2.<span></span>curl gnupg2 ca-cerificates lsb-release 설치
---

 ```
    $> sudo apt install curl gnupg2 ca-certificates lsb-release
 ```