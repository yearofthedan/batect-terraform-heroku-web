#! /usr/bin/env sh

heroku create --app "$TERRAFORM_STATE_APP"
heroku addons:create heroku-postgresql:hobby-dev --app "$TERRAFORM_STATE_APP"
