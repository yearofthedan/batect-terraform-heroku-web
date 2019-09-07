#! /usr/bin/env sh

heroku config:get DATABASE_URL --app "$APP_NAME-tstate"
