FROM --platform=linux/amd64 nginx:alpine

COPY ./default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /usr/share/nginx/html/

COPY ./index.html /usr/share/nginx/html/

RUN chmod -R 755 /usr/share/nginx/html/

ENTRYPOINT ["nginx", "-g", "daemon off;"]
