#!/usr/bin/env sh
git checkout production
git pull
bundle exec jekyll build
docker run --rm -it \
  --volume="$PWD:/srv/jekyll" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle" \
  jekyll/builder:4.2.0 \
  jekyll build

exit 0
