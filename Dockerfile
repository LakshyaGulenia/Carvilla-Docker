FROM ngnix:alpine
copy . /usr/share/nginx/html/
EXPOSE 80
