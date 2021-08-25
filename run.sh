
echo -e "컨테이너 이름 :"
read name
echo -e "호스트 이름 :"
read honame
echo -e "비밀번호 :"
read pass
echo -e "포트 :"
read port
echo -e "공유디렉터리 경로 :"
read path

sudo docker run \
--name ${name} \
--hostname ${honame} \
-i -t -d \
-p ${port}:8080 \
-v ${path}:/home/coder/project \
-e PASSWORD=${pass} \
codercom/code-server:latest
