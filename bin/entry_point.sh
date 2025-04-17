#!/bin/bash

CONFIG_FILE="_config.yml"

start_jekyll() {
  echo "Starting Jekyll server..."
  rm -f Gemfile.lock
  exec bundle exec jekyll serve \
    --watch \
    --port=8080 \
    --host=0.0.0.0 \
    --livereload \
    --verbose \
    --trace \
    --force_polling &
}

start_jekyll

while true; do
  inotifywait -q -e modify,move,create,delete "$CONFIG_FILE"
  if [ $? -eq 0 ]; then
    echo "Change detected to $CONFIG_FILE, restarting Jekyll..."
    pkill -f jekyll || true
    sleep 1
    start_jekyll
  fi
done
