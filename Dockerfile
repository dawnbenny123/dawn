FROM ubuntu
RUN mkdir -p /opt/deployables
ENV NGX_PATH /opt/deployables
COPY /home/ec2-user/env/nginx-1.16.1     $NGX_PATH/nginx
COPY /home/ec2-user/env/pcre       $NGX_PATH/pcre
COPY /home/ec2-user/env/openssl        $NGX_PATH/openssl
WORKDIR $NGX_PATH/nginx
RUN apt-get install build-essential -y
RUN mkdir -p /usr/local/nginx
RUN ./configure  --prefix=/usr/local/nginx \
                 --sbin-path=/usr/sbin/nginx \  
                 --error-log-path=/var/log/nginx/error.log \
                 --http-log-path=/var/log/nginx/access.log \
                 --pid-path=/var/run/nginx.pid \ 
                 --without-http_gzip_module \
                 --with-http_ssl_module \ 
                 --with-openssl=/opt/deployables/openssl \
                 --conf-path=/usr/local/nginx/nginx.conf \
                 --with-http_sub_module \
                 --with-pcre=/opt/deployables/pcre

EXPOSE 5050

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
