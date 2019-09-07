#! /usr/bin/env sh

set -euo pipefail

TAG=$(git rev-parse HEAD)

docker build -t registry.heroku.com/"$APP_NAME"/web-app:latest ./app
docker tag      registry.heroku.com/"$APP_NAME"/web-app:latest registry.heroku.com/"$APP_NAME"/web-app:"$TAG"
docker login --username=_ --password="$HEROKU_API_KEY" registry.heroku.com

docker push registry.heroku.com/"$APP_NAME"/web-app:latest
docker push registry.heroku.com/"$APP_NAME"/web-app:"$TAG"
