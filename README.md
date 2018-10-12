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

## FAQ

##### The worker container keeps crashing?
This setup assumes you use Laravel Horizon for your queue setup.
If you have another queue setup, you may change the worker image (`images/worker/Dockerfile`) or completely remove it.
