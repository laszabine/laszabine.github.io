#!/usr/bin/env sh
docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  -it jekyll/jekyll:4.2.0 \
  bundle update