# DOCKER-VERSION 1.6.2
#
# Node.js Dockerfile
#
# https://github.com/richardkdrew/docker-nodejs
#

FROM richardkdrew/nodejs:0.12.7

MAINTAINER Richard Drew <richardkdrew@gmail.com>

COPY *.json /resume/

WORKDIR "/resume"

RUN npm install

ONBUILD ["./node_modules/resume-cli/index.js", "export", "index", "-f", "html"]

EXPOSE 4000

ENTRYPOINT ["node"]
CMD ["./node_modules/resume-cli/index.js", "serve"]