FROM ngnix:alpine
COPY . /usr/share/nginx/html/
EXPOSE 80
