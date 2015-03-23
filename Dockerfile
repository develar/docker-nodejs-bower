FROM develar/nginx
MAINTAINER Vladimir Krivosheev <develar@gmail.com>

# bower requires git
RUN apk-install git && /usr/bin/npm install -g bower
WORKDIR /data

ENTRYPOINT ["bower", "--allow-root", "install"]