#!/bin/bash

sudo docker run -d -p 4000:4000 -v $(pwd)/blog:/opt/blog:rw \
        -t swvitaliy/jekyll