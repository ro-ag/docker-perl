#/bin/sh
set -x

docker build --build-arg PERL_VERSION=5.36.0 --build-arg DOCKER_IMG=amazonlinux --build-arg DOCKER_VER=latest  -t rodagurto/perl:5.36.0-amazonlinux .
docker build --build-arg PERL_VERSION=5.36.0 --build-arg DOCKER_IMG=centos      --build-arg DOCKER_VER=7       -t rodagurto/perl:5.36.0-centos.7 .

docker build --build-arg PERL_VERSION=5.34.1 -t rodagurto/perl:5.34.1-centos.stream .
docker build --build-arg PERL_VERSION=5.34.1 -t rodagurto/perl:latest .

docker build --build-arg PERL_VERSION=5.34.1 --build-arg DOCKER_IMG=amazonlinux --build-arg DOCKER_VER=latest  -t rodagurto/perl:5.34.1-amazonlinux .
docker build --build-arg PERL_VERSION=5.34.1 --build-arg DOCKER_IMG=centos      --build-arg DOCKER_VER=8       -t rodagurto/perl:5.34.1-centos.8 .
docker build --build-arg PERL_VERSION=5.34.1 --build-arg DOCKER_IMG=centos      --build-arg DOCKER_VER=7       -t rodagurto/perl:5.34.1-centos.7 .

docker build --build-arg PERL_VERSION=5.32.1 --build-arg DOCKER_IMG=amazonlinux --build-arg DOCKER_VER=latest  -t rodagurto/perl:5.32.1-amazonlinux .
docker build --build-arg PERL_VERSION=5.32.1 --build-arg DOCKER_IMG=centos      --build-arg DOCKER_VER=8       -t rodagurto/perl:5.32.1-centos.8 .
docker build --build-arg PERL_VERSION=5.32.1 --build-arg DOCKER_IMG=centos      --build-arg DOCKER_VER=7       -t rodagurto/perl:5.32.1-centos.7 .

docker build --build-arg PERL_VERSION=5.30.3 --build-arg DOCKER_IMG=amazonlinux --build-arg DOCKER_VER=latest  -t rodagurto/perl:5.30.3-amazonlinux .
docker build --build-arg PERL_VERSION=5.30.3 --build-arg DOCKER_IMG=centos      --build-arg DOCKER_VER=8       -t rodagurto/perl:5.30.3-centos.8 .
docker build --build-arg PERL_VERSION=5.30.3 --build-arg DOCKER_IMG=centos      --build-arg DOCKER_VER=7       -t rodagurto/perl:5.30.3-centos.7 .


docker push rodagurto/perl:5.36.0-centos.7
docker push rodagurto/perl:5.36.0-amazonlinux

docker push rodagurto/perl:5.34.1-centos.stream
docker push rodagurto/perl:latest

docker push rodagurto/perl:5.34.1-amazonlinux 
docker push rodagurto/perl:5.34.1-centos.8
docker push rodagurto/perl:5.34.1-centos.7

docker push rodagurto/perl:5.32.1-amazonlinux
docker push rodagurto/perl:5.32.1-centos.8
docker push rodagurto/perl:5.32.1-centos.7

docker push rodagurto/perl:5.30.3-amazonlinux
docker push rodagurto/perl:5.30.3-centos.8
docker push rodagurto/perl:5.30.3-centos.7