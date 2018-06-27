WebDock
===

WebDock is a minimalistic Docker starter for web applications.
Project is designed to build PHP micro services and SPA apps, but it can
be prepared for PHP MPA in few minutes.

## Table of contents

1. [Getting started](#getting-started)
1. [Useful links](./Documentation/Useful-links.md)
1. [Useful Docker images](./Documentation/Useful-Docker-images.md)
1. [Repository structure concepts](./Documentation/Repository-structure-concepts.md)
1. [PHP Debugging](./Documentation/PHP-Debugging.md)

## Getting started

These instructions will help you use any repository from this project.

### Prerequisites

To start working with WebDock's repositories you have to install this software:

* [Docker Engine](https://docs.docker.com/engine/)
* [Docker Compose](https://docs.docker.com/compose/)
* [Docker Machine](https://docs.docker.com/machine/) (for MacOS and Windows only)
    * [Docker Machine NFS](https://github.com/adlogix/docker-machine-nfs)
      is recommended to speed up transferring files between Docker Machine and MacOS

This is how you can check if it is installed:

```
$ docker --version
$ docker-compose --version
$ docker-machine --version
$ docker-machine-nfs
$ docker run --rm hello-world
```

#### Hosts

Check Docker IP with `ifconfig docker0` command,
or `docker-machine ip` if you are working with Docker Machine.

```
$ ifconfig docker0
docker0   Link encap:Ethernet  HWaddr 02:42:be:e6:83:00  
          inet addr:172.17.0.1  Bcast:0.0.0.0  Mask:255.255.0.0
          UP BROADCAST MULTICAST  MTU:1500  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
```

Add `172.17.0.1 docker.localhost www.docker.localhost` line to
the `/etc/hosts` file
(`C:\Windows\System32\Drivers\etc\hosts` file for Windows).

### Copy files

Copy any [repository](./repositories/) from this project to your
own Git repository and follow it's readme file.

#### Docker registry

[Docker Hub](https://hub.docker.com) is an official registry for Docker images.

Create own repositories for the following images and replace them in your projects.

```
damlys/webdock-web-assets-builder
damlys/webdock-web-client
damlys/webdock-web-client-foundation
damlys/webdock-php-web-server
damlys/webdock-php-web-server-foundation
```
