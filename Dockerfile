FROM ubuntu:14.04

RUN apt-get update && \
		apt-get install -y ruby ruby1.9.1-dev

RUN apt-get install -y python-software-properties software-properties-common python g++ make
RUN add-apt-repository ppa:chris-lea/node.js && \
		apt-get update && \
		apt-get install -y nodejs

WORKDIR /opt
RUN gem install jekyll

RUN cd /opt && jekyll new blog
ADD ./blog /opt/blog

EXPOSE 4000

WORKDIR /opt/blog
CMD ["jekyll", "serve"]