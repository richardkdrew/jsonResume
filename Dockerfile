# DOCKER-VERSION 1.6.2
#
# Node.js Dockerfile
#
# https://github.com/richardkdrew/resume
#

FROM richardkdrew/nodejs

MAINTAINER Richard Drew <richardkdrew@gmail.com>

COPY *.json /resume/

WORKDIR "/resume"

RUN npm install

ONBUILD ["./node_modules/resume-cli/index.js", "export", "index", "-f", "html", "-t",  "elegant"]

EXPOSE 4000

ENTRYPOINT ["node"]
CMD ["./node_modules/resume-cli/index.js", "serve"]