#!/bin/sh
JEKYLL_ENV=production bundle exec jekyll build
rsync -avr --omit-dir-times --rsh='ssh' --delete-after --delete-excluded _site/ matt@206.189.186.174:/var/www/yawnofthedad
