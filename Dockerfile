FROM registry.cn-shenzhen.aliyuncs.com/xiaoxijin/pcm_dev:latest
Maintainer Xijin Xiao (http://github.com/xiaoxijin/)


ADD install.sh $WORK_DIR
COPY entrypoint.sh $WORK_DIR
RUN sh ${WORK_DIR}install.sh
CMD ["local"]
