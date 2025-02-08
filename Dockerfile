FROM ubuntu:20.04

ENV TZ=Asia/Shanghai

RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt install -y curl tzdata inetutils-ping dnsutils libssl-dev uuid-runtime

COPY src/aliyun /opt/aliyunddns
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /opt/aliyunddns

ENTRYPOINT ["sh", "/entrypoint.sh"]