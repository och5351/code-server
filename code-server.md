<div align="right"> 
<a href="https://github.com/och5351/code-server/blob/main/README.md"> 메인으로 </a>
</div><br>

# Code-server 설치


1.<span> </span>다운
---

 ```
    $> curl -fsSL https://code-server.dev/install.sh | sh

    # curl 없을 시 설치

    $> sudo apt-get instll curl
 ```
 <div align="right"> 
<a href="https://github.com/och5351/code-server/blob/main/README.md"> 메인으로 </a>
</div>
 <br>
 
2.<span> </span>~/.config/code-server/config.yaml 파일 설정
---

 ```
    $> sudo vi ~/.config/code-server/config.yaml

    [config.yaml]
    bind-addr: 127.0.0.1:8090 # 로컬 호스트의 8090포트를 잡아준다. nginx에서 80 포트 / 접속을 이쪽으로 잡아줄 것
    auth: passwd
    password: 접속할 로그인 패스워드
    cert: false

 ```
 <div align="right"> 
<a href="https://github.com/och5351/code-server/blob/main/README.md"> 메인으로 </a>
</div>
<br>

3.<span> </span>실행
---

당연히 로컬 호스트로 잡아 뒀기 때문에 실행이 안될 것 nginx 설정 해주기

 ```
    $> code-server
 ```


 <a href="https://github.com/och5351/code-server/blob/main/Nginx.md">Nginx 설치 & 설정</a>
  <div align="right"> 
<a href="https://github.com/och5351/code-server/blob/main/README.md"> 메인으로 </a>
</div>