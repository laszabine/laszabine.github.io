#!/usr/bin/env sh
docker run --rm -it \
  --volume="$PWD:/srv/jekyll" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle" \
  -p 4000:4000 jekyll/jekyll:4.2.0 \
  jekyll serve
#bundle install --path vendor/bundle
#bundle exec jekyll serve --livereload