## Dockerfiles for Go - Continuous Delivery

This repository contains **Dockerfiles** for [Go - Continuous Delivery](http://www.go.cd/).

### Base Docker Image

* [dockerfile/java:oracle-java8](http://dockerfile.github.io/#/java)

### Installation

1. Install [Docker](https://www.docker.com/)
2. Clone this repo
3. Build server image `. gocd/gocd-server/build.sh`
4. Build agent image `. gocd/gocd-agent/build.sh`

### Usage

    docker run -d -p 8153:8153 --name gocd-server istonikula/gocd-server
    docker run -d --link gocd-server:goserver --name gocd-agent1 istonikula/gocd-agent
    docker run -d --link gocd-server:goserver --name gocd-agent2 istonikula/gocd-agent
    docker run -d --link gocd-server:goserver --name gocd-agent3 istonikula/gocd-agent

