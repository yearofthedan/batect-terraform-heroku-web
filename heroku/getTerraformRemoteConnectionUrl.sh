#! /usr/bin/env sh

heroku config:get DATABASE_URL --app "$TERRAFORM_STATE_APP"
