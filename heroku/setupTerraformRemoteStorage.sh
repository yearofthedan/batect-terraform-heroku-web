#! /usr/bin/env sh

heroku create --app "$APP_NAME-tstate"
heroku addons:create heroku-postgresql:hobby-dev --app "$APP_NAME-tstate"
