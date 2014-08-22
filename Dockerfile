FROM ubuntu:14.04

RUN apt-get update && \
		apt-get install -y ruby ruby1.9.1-dev

RUN apt-get install -y python-software-properties software-properties-common python g++ make
RUN add-apt-repository ppa:chris-lea/node.js && \
		apt-get update && \
		apt-get install -y nodejs

WORKDIR /opt
RUN gem install jekyll

ADD ./start.sh /start.sh
RUN chmod +x /start.sh

VOLUME ["/opt/blog"]

EXPOSE 4000
CMD ["/start.sh"]