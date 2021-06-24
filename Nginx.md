<div align="right"> 
<a href="https://github.com/och5351/code-server/blob/main/README.md"> 메인으로 </a>
</div><br>

## Nginx

Nginx 는 Igor Sysoev라는 러시아 개발자가 만든 동시접속 처리에 특화된 웹 서버 프로그램이라고 한다. Apache보다 동작이 단순하고, 전달자 역할만 하기 때문에 동시접속 처리에 특화되어 있다고 한다.

동시접속자(약 700명) 이상이라면 서버를 증설하거나 Nginx 환경을 권장한다고 한다. 지금은 아파치 시장 점유율이 압도적이라고 하지만 아마존 웹 서비스(AWS) 상에서는 시장 점유율이 44% 달할 정도로 가볍고 성능이 좋은 엔진이라고 한다.

## Nginx 설치

<br>

1.<span> </span>apt 업데이트 
---

 ```
    $> sudo apt update && sudo apt upgrade
 ```
 <div align="right"> 
<a href="https://github.com/och5351/code-server/blob/main/README.md"> 메인으로 </a>
</div><br>

<br>

2.<span> </span>curl gnupg2 ca-cerificates lsb-release 설치
---

 ```
    $> sudo apt install curl gnupg2 ca-certificates lsb-release
 ```
 <div align="right"> 
<a href="https://github.com/och5351/code-server/blob/main/README.md"> 메인으로 </a>
</div><br>

 <br>

3.<span> </span> stable 버전 저장소 등록
---

 ```
   $> echo "deb http://nginx.org/packages/ubuntu `lsb_release -cs` nginx" | sudo tee /etc/apt/sources.list.d/nginx.list
 ```
 <div align="right"> 
<a href="https://github.com/och5351/code-server/blob/main/README.md"> 메인으로 </a>
</div><br>

<br>

4.<span> </span> 공식 서명키
---

 ```
   $> curl -fsSL https://nginx.org/keys/nginx_signing.key | sudo apt-key add -
 ```
 <div align="right"> 
<a href="https://github.com/och5351/code-server/blob/main/README.md"> 메인으로 </a>
</div><br>

<br>

5.<span> </span> fingerprint 확인
---

 ```
   $> sudo apt-key fingerprint ABF5BD827BD9BF62
 ```
 <div align="right"> 
<a href="https://github.com/och5351/code-server/blob/main/README.md"> 메인으로 </a>
</div><br>

<br>

6.<span> </span>Nginx 설치
---

 ```
   $> sudo apt update
   $> sudo apt install nginx
 ```
 <div align="right"> 
<a href="https://github.com/och5351/code-server/blob/main/README.md"> 메인으로 </a>
</div><br>

<br>

7.<span> </span>Nginx 설치 후 경로 확인
---

아래의 경로를 반드시 확인해 줄 것. 최신 버전은 sites-available과 sites-enabled가 설치 안 되는 건지 보이지 않는 경우가 있다.
그럴 때는 conf.d 의 default.conf 를 Nginx 동작시 바라보고 있으므로 우선 저기를 써주자.

 ```
   $> sudo ls -al /etc/nginx/
 ```
<div align="right"> 
<a href="https://github.com/och5351/code-server/blob/main/README.md"> 메인으로 </a>
</div><br>

<br>

8.<span> </span>.conf 파일 수정(Reverse Proxy)
---

 ```
   $> sudo vi /etc/nginx/conf.d/default.conf
  
   [default.conf]
   
   server {
    listen       80; # 80 포트 접근 시 동작
    server_name  localhost;

    #access_log  /var/log/nginx/host.access.log  main;

    location / {  # 80 포트 / 경로 routing
        proxy_pass      http://localhost:8090/; # code-server의 내부 포트 8090

        # 아래와 같이 proxy 설정을 해줘야 비밀번호 기입 후 넘어가 짐
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade; 
        proxy_set_header Connection "upgrade";
        proxy_set_header Host $host;
        proxy_set_header Accept_encoding gzip;
        root   /usr/share/nginx/html;
        index  index.html index.htm;
    }
 ```
 <div align="right"> 
<a href="https://github.com/och5351/code-server/blob/main/README.md"> 메인으로 </a>
</div><br>

 <br>

9.<span> </span>Nginx 구동
---

code-server를 켜 놓지 않은 상태에서 구동 시켰을 경우 당연히 error 화면이 나타난다.

 ```
  $> sudo systemctl start nginx
 ```
<br>

<div align="right"> 
<a href="https://github.com/och5351/code-server/blob/main/README.md"> 메인으로 </a>
</div><br>
