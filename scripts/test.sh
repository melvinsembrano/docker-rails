#!/bin/sh

bundle install
yarn install
bundle exec rails db:create
bundle exec rails db:schema:load

bundle exec rails test
