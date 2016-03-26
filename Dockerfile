FROM openlabs/docker-wkhtmltopdf
MAINTAINER Yang Che <cheyang@163.com>

#Install html to pdf
RUN apt-get install -y nodejs && \
	npm install markdown-resume

#Add Chinese support
RUN apt-get install fonts-wqy-microhei \
                     ttf-wqy-microhei \
                     fonts-wqy-zenhei \
                     ttf-wqy-zenhei && \
    fc-cache -f -v