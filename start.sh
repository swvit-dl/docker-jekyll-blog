#!/bin/bash

if [ ! -d "/opt/blog/_posts" ]; then
	# Installation blog (if not exists)
	cd /opt && jekyll new blog
fi

cd /opt/blog && jekyll serve -H 0.0.0.0 --port 4000
