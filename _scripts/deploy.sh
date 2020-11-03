#!/usr/bin/env sh
git checkout production
git pull
bundle exec jekyll build
exit 0
