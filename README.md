# concoure-deploy

Deploy a local concourse-ci pipeline for testing and exploration

## Getting Started

Basically the same docker-compose file offered up by the concourse
folks. The main difference being the keys are generated in a container.

1. Copy docker-compose.env to .env.

2. Edit .env to match your

3. Run **docker-compose up -d**

profit ??

### Prerequisites

docker-ce >= 17.09.1-ce

docker-compose >= 1.19.1

## Built With

* [concourse](https://github.com/concourse/concourse-docker) - concourse-docker

## License

This project is licensed under the MIT License
