# Learning convox with a basic nodejs express app

This repo is about deploying apps to AWS via convox.

## Prerequisites

- Docker account + CLI: https://www.docker.com/
- Convox account + CLI: https://convox.com/ (also do the quick start tutorial)

## Start

Start everything with docker-compose. This doesn't need to build anything:

- run: `docker-compose up`or `convox start`
- list: `docker-compose ps`
- stop: `docker-compose stop`

Sometimes docker-compose will work but the underlying docker build will not. This
will result in a unsuccessful deployment, so make sure that your app always runs 
with docker build and run: 

- container build: `docker build -t learning-convox-nodejs .`
- container run: `docker run learning-convox-nodejs`
- container list: `docker ps`


## Deploy with convox

Create an account on convox.com and go through the quick start tutorial. For the basic rack downgrading to _t2.micro_
could save you some bucks so if you don't deploy power consuming apps you should do that.

- `convox switch <org>/<rack>`
- `convox apps create `
- `convox apps info` wait until status is _running_
- `convox deploy`
- `convox rack params set BuildMemory=512` if no-memory error rises

If the app is deploy you can do:

- `convox logs`
