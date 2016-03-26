FROM openlabs/docker-wkhtmltopdf
MAINTAINER Yang Che <cheyang@163.com>

#Install html to pdf
RUN apt-get install -y nodejs \
				       npm && \
	npm install -g markdown-resume && \
	rm -f /usr/local/lib/node_modules/markdown-resume/assets/css/resume.css

#Add Chinese support
RUN apt-get install -y fonts-wqy-microhei \
                     ttf-wqy-microhei \
                     fonts-wqy-zenhei \
                     ttf-wqy-zenhei && \
    				 fc-cache -f -v

ADD resume.css /usr/local/lib/node_modules/markdown-resume/assets/css

ENTRYPOINT ["nodejs", "/usr/local/lib/node_modules/markdown-resume/bin/md2resume"]


    				 