#!/bin/bash

docker run -d --link gocd-server:goserver --name gocd-agent$1 istonikula/gocd-agent
