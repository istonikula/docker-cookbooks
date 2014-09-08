#!/bin/bash

docker run -d -p 8153:8153 -p 8154:8154 --name gocd-server istonikula/gocd-server
