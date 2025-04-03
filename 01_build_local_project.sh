#!/bin/sh

echo "Volumes - destroying..."
docker compose down
docker volume rm $(docker volume ls -f dangling=true)
echo "Volumes - done!"

echo

echo "Images - building..."
docker rmi $(docker images -f dangling=true)
docker rmi app_backend
docker system prune -a -f --volumes
docker compose build app
echo "Images - done!"

echo "Karafka Web - migrating..."
docker compose run --rm app bundle exec karafka-web migrate
echo "Karafka Web - done!"

echo "App - starting..."
docker compose up app -d
docker compose up consumer -d
docker logs --follow app

# How to run:
# bash 01_build_local_project.sh