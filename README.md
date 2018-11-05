# laravel-docker
A simple yet effective default setup for Laravel on Docker.

## Installation

- Clone this project into the root directory of you laravel project: `git clone git@github.com:mace015/laravel-docker.git`.
- Optional: Rename the cloned folder to something more generic, like `docker`: `mv laravel-docker docker`.
- Copy `.env.example` to `.env` and modify it as you see fit with you project's details: `cd laravel-docker && cp .env.example .env`.
- Build the images: `cd scripts && bash build.sh`.

## Usage

#### Start all containers:

`docker-compose up`

#### Start all containers in daemon mode:

`docker-compose up -d`

#### Stop all containers:

`docker-compose stop`

#### Build all images:

`bash scripts/build.sh`

#### List all active containers and their IP's:

`bash scripts/list.sh`

## Local HTTPS
In the event you want HTTPS for your local dev environment, follow these steps:

- First, copy `config/cert/default.conf` to `data/cert/your-domain.conf` (ex: `cp config/cert/default.conf data/cert/example-project.test.conf`).
- Open the file you just copied and replace `[your domain here]` with your domain at the bottom of the file.
- `cd data/cert`.
- Next, generate the certificates with the following command (remember to replace `[your domain here]` with your actual domain ;) ):
```
openssl req -config [your domain here].conf -new -sha256 -newkey rsa:2048 -nodes -keyout default.key -x509 -days 365 -out default.crt
```
- Import the .crt file into the certificate store of your OS, this is diffrent for every OS (you may need to restart your browser for this change to take effect).
- Start the containers with the following command: `docker-compose -f docker-compose.yml -f with-ssl.yml up`

## FAQ

##### When trying to start the containers, it complains that the network is missing.
This setup runs the hosted application under its own docker network to prevent collisions and confusion when running more than one application on a host.
The network name is defaulted to the project name from the .env file + '-network' (ex: `example-project-network`).
If the network is missing, create it by running `docker network create [network name here]`.

##### The worker container keeps crashing?
This setup assumes you use Laravel Horizon for your queue setup.
If you have another queue setup, you may change the worker image (`images/worker/Dockerfile`) or completely remove it.
