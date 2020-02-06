#基础镜像为centos
 
FROM centos

## Build Env vars
ARG APP_URL="https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz"

RUN cd /tmp && \
 
#安装wget
 
yum -y install wget && \
 
#下载安装包
 
wget ${APP_URL} && \
 
#解压缩
 
tar -xvf ffmpeg-release-amd64-static.tar.xz && \
 
 
#启动服务，占用8100端口
CMD ffmpeg-release-amd64-static/ffmpeg
