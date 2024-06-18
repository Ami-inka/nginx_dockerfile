# docker build --platform=linux/amd64 -t yourimagename .

FROM nginx:alpine

COPY ./default.conf /etc/nginx/conf.d/default.conf

COPY ./index.html /usr/share/nginx/html/

ENTRYPOINT ["nginx", "-g", "daemon off;"]
