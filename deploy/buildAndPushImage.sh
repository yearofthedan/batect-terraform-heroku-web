#! /usr/bin/env sh
set -euo pipefail

HEROKU_PROCESS_TYPE=web
TAG=$(git rev-parse HEAD)
IMAGE_PATH=registry.heroku.com/"$WEB_APP"/"$HEROKU_PROCESS_TYPE"

docker build -t "$IMAGE_PATH":latest ./app
docker tag      "$IMAGE_PATH":latest "$IMAGE_PATH":"$TAG"
docker tag      "$IMAGE_PATH":latest "$IMAGE_PATH"
docker login --username=_ --password="$HEROKU_API_KEY" registry.heroku.com

docker push "$IMAGE_PATH":latest
docker push "$IMAGE_PATH":"$TAG"
docker push "$IMAGE_PATH"
