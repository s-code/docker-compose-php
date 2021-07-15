# Docker compose alpine image with php7

docker build -t samrob/compose-php:latest --build-arg COMPOSER_VERSION=2.1.3 .
docker build -t samrob/compose-php:legacy --build-arg COMPOSER_VERSION=1.10.22 .
docker push samrob/compose-php:latest
docker push samrob/compose-php:legacy