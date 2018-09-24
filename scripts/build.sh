DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

docker build -t mace015/laravel-docker-application $DIR/../images/application
docker build -t mace015/laravel-docker-workspace $DIR/../images/workspace
docker build -t mace015/laravel-docker-worker $DIR/../images/worker
docker build -t mace015/laravel-docker-cron $DIR/../images/cron
