# 기본 이미지로부터 시작
FROM nginx:latest

# 작업 디렉토리 설정
WORKDIR /usr/share/nginx/html

# 로컬 파일을 컨테이너 내부로 복사
COPY assets /usr/share/nginx/html/assets
COPY config.js /usr/share/nginx/html/config.js
COPY contact.html /usr/share/nginx/html/contact.html
COPY css /usr/share/nginx/html/css
COPY index.html /usr/share/nginx/html/index.html
COPY js /usr/share/nginx/html/js
COPY projects.html /usr/share/nginx/html/projects.html
COPY resume.html /usr/share/nginx/html/resume.html

# Nginx 설정 파일을 컨테이너 내부로 복사
COPY nginx.conf /etc/nginx/nginx.conf

# 컨테이너 실행 시 Nginx 자동 시작
CMD ["nginx", "-g", "daemon off;", "-p", "8080:8080"]

