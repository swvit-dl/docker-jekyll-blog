FROM ruby

WORKDIR /opt
ADD ./blog /opt/blog

RUN cd /opt/blog
RUN gem install jekyll && jekyll new my-awesome-site && \
		cd my-awesome-site
 
ENTRYPOINT "jekyll" 
CMD ["serve"]