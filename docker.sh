# nginx 이미지 찾기
docker search nginx

# 이미지의 스타가 100개 이상인 이미지 찾기
docker search nginx --filter stars=100

# 이미지가 오피셜 이미지 인것만 찾기
docker search nginx --filter is-official=true

# 이미지 가져오기
docker pull ubuntu:latest 

# 도커 이미지 목록 확인하기
docker images

# 컨테이너 실행하기
docker run nginx 
docker run -p 8080:80 nginx # 포트포워딩
docker run -d -p 8080:80 nginx # 백그라운드 실행
docker run -d -p 8080:80 --name webserver nginx # 이름 지정
docker run -it ubuntu:latest /bin/bash # bash 실행 (-it 옵션 : i -> interactive (입출력 허용), t -> tty)

# 실행중인 컨테이너에 접속
docker exec -it webserver /bin/bash 

# 실행중인 컨테이너 확인
docker ps 

# 중지된 컨테이너도 확인
docker ps -a 

# 컨테이너 중지
docker stop webserver 

# 컨테이너 삭제
docker rm webserver 

# 컨테이너 로그 확인
docker logs webserver 

# 실시간 로그 확인
docker logs -f webserver 

# 현재 디렉토리에 있는 Dockerfile을 이용하여 이미지 생성
docker build -t mynginx . 

# 도커 허브 로그인
docker login

# 도커 허브에 이미지 올리기
docker push mynginx 