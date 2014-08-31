# Desc

a set of dockerfiles for web development on windows

## ubuntu trusty vm as docker host:

- easy to install latest version of docker
- why not `boot2docker`: too tiny, too difficult (like auto mount a folder), don't waste time on it
- why not `coreos`: lack of linux tools (like samba), not for development

## samba as synced folder method

- on windows, vagrant has performance issue when your working folder contains many many files (like a drupal project)

## `debian:jessie` as base image

- the best

## no `supervisord`

- one container for one service only

## timezone

- timezone is `Asia/Hong_Kong`

## containers access host port

- use `ip addr show docker0` get the docker bridge ip (like `172.17.42.1`)
- use that ip in your container to access host port (for example, upstream ip in `nginx`)

## they are just images

- you won't see a lot of actual running options (like port forwarding, linking, data volume mounting etc.) at this repository 
- but usually will mount local folders to data volumes defined by `VOLUME` 

## stop containers

- `stop` or `kill -s <SIG>`, depends on service
- for `MySQL`, use `mysqladmin -h 127.0.0.1 -u admin -p shutdown`

## not for production

- container services are run with `root`

